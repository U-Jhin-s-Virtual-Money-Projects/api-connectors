/**
 * Bybit API
 * ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  
 *
 * OpenAPI spec version: 0.2.10
 * Contact: support@bybit.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

package io.swagger.client.model


case class V2OrderRes (
  userId: Option[Number] = None,
  orderStatus: Option[String] = None,
  symbol: Option[String] = None,
  side: Option[String] = None,
  orderType: Option[String] = None,
  price: Option[String] = None,
  qty: Option[String] = None,
  timeInForce: Option[String] = None,
  orderLinkId: Option[String] = None,
  orderId: Option[String] = None,
  createdAt: Option[String] = None,
  updatedAt: Option[String] = None,
  leavesQty: Option[String] = None,
  leavesValue: Option[String] = None,
  cumExecQty: Option[String] = None,
  cumExecValue: Option[String] = None,
  cumExecFee: Option[String] = None,
  rejectReason: Option[String] = None
)

