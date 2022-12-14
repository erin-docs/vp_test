connection: "big_query"

# include all the views
include: "/views/**/*.view"

datagroup: vp_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vp_default_datagroup

explore: fatal_error_persist_for_five_seconds {}

explore: erin_newtable {}

explore: connection_reg_r3 {}

explore: hundred_million_orders {
  join: orders {
    type: left_outer
    sql_on: ${hundred_million_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: fake_scratch__connection_reg_r3 {}

explore: billion_orders_wide {
  join: orders {
    type: left_outer
    sql_on: ${billion_orders_wide.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: all_types {}

explore: billion_orders {
  join: orders {
    type: left_outer
    sql_on: ${billion_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: nested_and_repeated {
  join: nested_and_repeated__repeated_field {
    view_label: "Nested And Repeated: Repeated Field"
    sql: LEFT JOIN UNNEST(${nested_and_repeated.repeated_field}) as nested_and_repeated__repeated_field ;;
    relationship: one_to_many
  }

  join: nested_and_repeated__doubly_nested_and_repeated {
    view_label: "Nested And Repeated: Doubly Nested And Repeated"
    sql: LEFT JOIN UNNEST(${nested_and_repeated.doubly_nested_and_repeated}) as nested_and_repeated__doubly_nested_and_repeated ;;
    relationship: one_to_many
  }

  join: nested_and_repeated__doubly_nested_and_repeated__inner_repeated {
    view_label: "Nested And Repeated: Doubly Nested And Repeated Inner Repeated"
    sql: LEFT JOIN UNNEST(${nested_and_repeated__doubly_nested_and_repeated.inner_repeated}) as nested_and_repeated__doubly_nested_and_repeated__inner_repeated ;;
    relationship: one_to_many
  }
}

explore: mat_view_base_1247 {}

explore: mat_view_base_4309 {}

explore: looker_scratch__tst_reg_ebffc1deed5d25a581 {}

explore: mat_view_base_3317 {}

explore: looker_scratch__tst_reg_963fdcc02655d76f67 {}

explore: hundred_million_orders_wide {
  join: orders {
    type: left_outer
    sql_on: ${hundred_million_orders_wide.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: mat_view_base_3890 {}

explore: order_items {
  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_date_string {
  join: users {
    type: left_outer
    sql_on: ${orders_date_string.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_base_copy {
  join: users {
    type: left_outer
    sql_on: ${orders_base_copy.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: partition_table_a_5fc6 {}

explore: orders_date_string_test2 {
  join: users {
    type: left_outer
    sql_on: ${orders_date_string_test2.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: partition_table_a_0ddb {}

explore: partition_table_a_a730 {}

explore: partition_table_b_3624 {}

explore: partition_table_b_5325 {}

explore: partition_table_b_189e {}

explore: partition_table_b_41bd {}

explore: partition_table_b_4f41 {}

explore: partition_table_b_1ae9 {}

explore: partition_table_b_8288 {}

explore: partition_table_b_798e {}

explore: partition_table_b_c777 {}

explore: partition_table_b_8bd9 {}

explore: partition_table_b_b2fe {}

explore: partition_table_b_bc04 {}

explore: partition_table_b_a80b {}

explore: partition_table_b_c3eb {}

explore: partition_table_b_c77e {}

explore: partition_table_b_cc59 {}

explore: partitiondate_test_420a72da {}

explore: partitiondate_test_423c60ab {}

explore: partition_table_b_d02e {}

explore: partition_table_test2 {}

explore: partitiondate_test_348ae832 {}

explore: partition_table_b_dcfa {}

explore: partitiondate_test_b0ea657e {}

explore: partitiondate_test_f38f76f1 {}

explore: partitiondate_test_5ff0c6c8 {}

explore: partitiontime_test_1fbe {}

explore: partitiondate_test_ff471f55 {}

explore: partitiontime_test_ed57 {}

explore: partitiontime_test_6be5 {}

explore: partitiontime_test_2f95 {}

explore: partitiontime_test_e6ac {}

explore: partitiontime_test_cb9b {}

explore: partitiontime_test_f446 {}

explore: testing_table {}

explore: testing_table_one {}

explore: vijaya_order_test {
  join: users {
    type: left_outer
    sql_on: ${vijaya_order_test.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: swett_del {}

explore: testme {}

explore: users {}
