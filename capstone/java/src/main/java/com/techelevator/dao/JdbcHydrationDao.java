package com.techelevator.dao;

import com.techelevator.model.Hydration;
import com.techelevator.model.WeekDataDto;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Component
public class JdbcHydrationDao implements HydrationDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcHydrationDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Hydration getDatesHydrationByUserId(int userId, LocalDate date) {
//        Hydration hydration = new Hydration();
//        String sql = "SELECT * FROM hydration WHERE user_id = ? AND "
        return null;
    }

    @Override
    public void setHydrationByUserId(Hydration newHydration) {
        newHydration.setHydrationDate(LocalDate.now());
        String sql = "SELECT hydration_total FROM hydration WHERE user_id = ? " +
                "AND hydration_date = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, newHydration.getUserId(), newHydration.getHydrationDate());
        if (results.next()) {
            sql = "UPDATE hydration SET hydration_total = ? WHERE user_id = ? AND hydration_date = ?";
            jdbcTemplate.update(sql, newHydration.getHydrationTotal(), newHydration.getUserId(),
                    newHydration.getHydrationDate());
        }
        else {
            sql = "INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (?, ?, ?);";
            jdbcTemplate.update(sql, newHydration.getUserId(), newHydration.getHydrationTotal(),
                    newHydration.getHydrationDate());
        }
    }

    @Override
    public List<Hydration> getHydrationForWeek(int weekId, int userId) {
        LocalDate startDate;
        LocalDate endDate;
        if (weekId == 1) {
            startDate = LocalDate.parse("2023-01-16");
            endDate = LocalDate.parse("2023-01-22");
        } else if (weekId == 2) {
            startDate = LocalDate.parse("2023-01-23");
            endDate = LocalDate.parse("2023-01-29");
        } else if (weekId == 3) {
            startDate = LocalDate.parse("2023-01-30");
            endDate = LocalDate.parse("2023-02-05");
        } else if (weekId == 4) {
            startDate = LocalDate.parse("2023-02-06");
            endDate = LocalDate.parse("2023-02-12");
        }
        else {
            return null;
        }
        List<Hydration> hydrationForWeek = new ArrayList<>();
        String sql = "SELECT * FROM hydration WHERE user_id = ? AND hydration_date >= ? AND hydration_date <= ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId, startDate, endDate);
        while (results.next()) {
            Hydration hydration = mapRowToHydration(results);
            hydrationForWeek.add(hydration);
        }
        return hydrationForWeek;
    }

    private Hydration mapRowToHydration(SqlRowSet results) {
        Hydration hydration = new Hydration();
        hydration.setUserId(results.getInt("user_id"));
        hydration.setHydrationTotal(results.getDouble("hydration_total"));
        hydration.setHydrationDate(Objects.requireNonNull(results.getDate("hydration_date")).toLocalDate());
        return hydration;
    }
}
