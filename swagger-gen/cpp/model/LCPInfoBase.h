/**
 * Bybit API
 * ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  
 *
 * OpenAPI spec version: 0.2.10
 * Contact: support@bybit.com
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.8.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * LCPInfoBase.h
 *
 * Query LCP info.
 */

#ifndef IO_SWAGGER_CLIENT_MODEL_LCPInfoBase_H_
#define IO_SWAGGER_CLIENT_MODEL_LCPInfoBase_H_


#include "../ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace io {
namespace swagger {
namespace client {
namespace model {

/// <summary>
/// Query LCP info.
/// </summary>
class  LCPInfoBase
    : public ModelBase
{
public:
    LCPInfoBase();
    virtual ~LCPInfoBase();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// LCPInfoBase members

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getDate() const;
    bool dateIsSet() const;
    void unsetdate();
    void setDate(utility::string_t value);
    /// <summary>
    /// 
    /// </summary>
    double getSelfRatio() const;
    bool selfRatioIsSet() const;
    void unsetSelf_ratio();
    void setSelfRatio(double value);
    /// <summary>
    /// 
    /// </summary>
    double getPlatformRatio() const;
    bool platformRatioIsSet() const;
    void unsetPlatform_ratio();
    void setPlatformRatio(double value);
    /// <summary>
    /// 
    /// </summary>
    double getScore() const;
    bool scoreIsSet() const;
    void unsetScore();
    void setScore(double value);

protected:
    utility::string_t m_date;
    bool m_dateIsSet;
    double m_Self_ratio;
    bool m_Self_ratioIsSet;
    double m_Platform_ratio;
    bool m_Platform_ratioIsSet;
    double m_Score;
    bool m_ScoreIsSet;
};

}
}
}
}

#endif /* IO_SWAGGER_CLIENT_MODEL_LCPInfoBase_H_ */