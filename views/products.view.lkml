view: products {
  sql_table_name: `da-coe-iot-streaming.walmart.products` ;;
  drill_fields: [product_id]

  dimension: product_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.product_id ;;
  }
  dimension: campaign_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: stock {
    type: number
    sql: ${TABLE}.stock ;;
  }
  measure: count {
    type: count
    drill_fields: [product_id, product_name, campaigns.campaign_name, campaigns.campaign_id, customer_engagement.count]
  }
}
