view: campaigns {
  sql_table_name: `walmart.campaigns` ;;
  drill_fields: [campaign_id]

  dimension: campaign_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: budget {
    type: number
    sql: ${TABLE}.budget ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: campaign_type {
    type: string
    sql: ${TABLE}.campaign_type ;;
  }

  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }

  dimension: expected_reach {
    type: number
    sql: ${TABLE}.expected_reach ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.product_category ;;
  }

  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }

  dimension: target_audience {
    type: string
    sql: ${TABLE}.target_audience ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_id, campaign_name]
  }

  # New measures for dashboards
  measure: total_budget {
    type: sum_distinct
    sql: ${budget} ;;
  }

  measure: avg_budget {
    type: average
    sql: ${budget} ;;
  }

  measure: avg_expected_reach {
    type: average
    sql: ${expected_reach} ;;
  }

  measure: total_campaigns {
    type: count_distinct
    sql: ${campaign_id} ;;
  }
}
