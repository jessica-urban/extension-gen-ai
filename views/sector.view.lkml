view: sector {
  sql_table_name: `da-coe-iot-streaming.gold_demand.sector` ;;

  dimension: average {
    type: number
    sql: ${TABLE}.average ;;
  }
  dimension: country_demand_sector {
    type: string
    sql: ${TABLE}.country_demand_sector ;;
  }
  dimension: twenty {
    type: number
    sql: ${TABLE}.twenty ;;
  }
  dimension: twenty_one {
    type: number
    sql: ${TABLE}.twenty_one ;;
  }
  dimension: twenty_three {
    type: number
    sql: ${TABLE}.twenty_three ;;
  }
  dimension: twenty_two {
    type: number
    sql: ${TABLE}.twenty_two ;;
  }
  measure: count {
    type: count
  }
}
