view: jewellery {
  sql_table_name: `da-coe-iot-streaming.gold_demand.jewellery` ;;

  dimension: average {
    type: number
    sql: ${TABLE}.average ;;
  }
  dimension: countries {
    type: string
    sql: ${TABLE}.countries ;;
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
