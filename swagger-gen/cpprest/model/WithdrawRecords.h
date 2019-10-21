/**
 * Bybit API
 * ## REST API for the Bybit Exchange. 
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@bybit.com
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.8.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * WithdrawRecords.h
 *
 * Get withdraw records response
 */

#ifndef IO_SWAGGER_CLIENT_MODEL_WithdrawRecords_H_
#define IO_SWAGGER_CLIENT_MODEL_WithdrawRecords_H_


#include "../ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace io {
namespace swagger {
namespace client {
namespace model {

/// <summary>
/// Get withdraw records response
/// </summary>
class  WithdrawRecords
    : public ModelBase
{
public:
    WithdrawRecords();
    virtual ~WithdrawRecords();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// WithdrawRecords members

    /// <summary>
    /// 
    /// </summary>
    double getId() const;
    bool idIsSet() const;
    void unsetId();
    void setId(double value);
    /// <summary>
    /// 
    /// </summary>
    double getUserId() const;
    bool userIdIsSet() const;
    void unsetUser_id();
    void setUserId(double value);
    /// <summary>
    /// 
    /// </summary>
    utility::string_t getCoin() const;
    bool coinIsSet() const;
    void unsetCoin();
    void setCoin(utility::string_t value);
    /// <summary>
    /// 
    /// </summary>
    utility::string_t getStatus() const;
    bool statusIsSet() const;
    void unsetStatus();
    void setStatus(utility::string_t value);
    /// <summary>
    /// 
    /// </summary>
    utility::string_t getAmount() const;
    bool amountIsSet() const;
    void unsetAmount();
    void setAmount(utility::string_t value);
    /// <summary>
    /// 
    /// </summary>
    utility::string_t getFee() const;
    bool feeIsSet() const;
    void unsetFee();
    void setFee(utility::string_t value);
    /// <summary>
    /// 
    /// </summary>
    utility::string_t getAddress() const;
    bool addressIsSet() const;
    void unsetAddress();
    void setAddress(utility::string_t value);
    /// <summary>
    /// 
    /// </summary>
    utility::string_t getTxId() const;
    bool txIdIsSet() const;
    void unsetTx_id();
    void setTxId(utility::string_t value);
    /// <summary>
    /// 
    /// </summary>
    utility::string_t getSubmitedAt() const;
    bool submitedAtIsSet() const;
    void unsetSubmited_at();
    void setSubmitedAt(utility::string_t value);
    /// <summary>
    /// 
    /// </summary>
    utility::string_t getUpdatedAt() const;
    bool updatedAtIsSet() const;
    void unsetUpdated_at();
    void setUpdatedAt(utility::string_t value);

protected:
    double m_Id;
    bool m_IdIsSet;
    double m_User_id;
    bool m_User_idIsSet;
    utility::string_t m_Coin;
    bool m_CoinIsSet;
    utility::string_t m_Status;
    bool m_StatusIsSet;
    utility::string_t m_Amount;
    bool m_AmountIsSet;
    utility::string_t m_Fee;
    bool m_FeeIsSet;
    utility::string_t m_Address;
    bool m_AddressIsSet;
    utility::string_t m_Tx_id;
    bool m_Tx_idIsSet;
    utility::string_t m_Submited_at;
    bool m_Submited_atIsSet;
    utility::string_t m_Updated_at;
    bool m_Updated_atIsSet;
};

}
}
}
}

#endif /* IO_SWAGGER_CLIENT_MODEL_WithdrawRecords_H_ */