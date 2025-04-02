view: sector {
  sql_table_name: `da-coe-iot-streaming.gold_demand.sector` ;;

  measure: average {
    type: number
    sql: ${TABLE}.average ;;
  }
  dimension: country_demand_sector {
    type: string
    sql: ${TABLE}.country_demand_sector ;;
  }
  measure: twenty {
    type: number
    sql: ${TABLE}.twenty ;;
  }
  measure: twenty_one {
    type: number
    sql: ${TABLE}.twenty_one ;;
  }
  measure: twenty_three {
    type: number
    sql: ${TABLE}.twenty_three ;;
  }
  measure: twenty_two {
    type: number
    sql: ${TABLE}.twenty_two ;;
  }
  measure: count {
    type: count
  }
}
