.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final CALLBACKURLSPAM_KT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CALLBACKURLSPAM_KT_RECEIVED"

.field public static final CALLBACKURLSPAM_SKT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CALLBACKURLSPAM_SKT_RECEIVED"

.field public static final CALLBACKURL_KT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CALLBACKURL_KT_RECEIVED"

.field public static final CALLBACKURL_SKT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CALLBACKURL_SKT_RECEIVED"

.field public static final CB_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_SMS_RECEIVED"

.field public static final COMMONPUSH_SKT_RECEIVED_ACTION:Ljava/lang/String; = "com.skt.push.SMS_PUSH"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DELETE_SIM_MESSAGE_ACTION:Ljava/lang/String; = "android.provider.Telephony.DELETE_SIM_MESSAGE"

.field public static final FOTA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.FOTA_RECEIVED"

.field public static final LGE_CMAS_CDMA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.LGE_CMAS_CDMA_RECEIVED"

.field public static final LGE_CMAS_GSM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.LGE_CMAS_GSM_RECEIVED"

.field public static final LGE_CMAS_RECEIVED_ACTION:Ljava/lang/String; = "com.lge.provider.Telephony.LGE_CMAS_RECEIVED"

.field public static final LGE_CMAS_SCPT_RECEIVED_ACTION:Ljava/lang/String; = "com.lge.provider.Telephony.LGE_CMAS_SCPT_RECEIVED"

.field public static final LGE_MMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_RECEIVED"

.field public static final LMS_PULL_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.LMSPULL_RECEIVED"

.field public static final LMS_PULL_SPAM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.LMSPULL_SPAM_RECEIVED"

.field public static final LMS_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.LMSPUSH_RECEIVED"

.field public static final LMS_PUSH_SPAM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.LMSPUSH_SPAM_RECEIVED"

.field public static final PORTADDRESS_KT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.PORTADDRESS_KT_RECEIVED"

.field public static final PORTADDRESS_SKT_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.PORTADDRESS_SKT_RECEIVED"

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_NOT_HANDLED:I = 0x5

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SEND_SMS_REQUST_BACKGROUND_ACTION:Ljava/lang/String; = "android.provider.Telephony.SEND_SMS_REQUST_BACKGROUND"

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SKAF_MMS_RECEIVED_ACTION:Ljava/lang/String; = "com.skt.skaf.ACTION.MMS_RECEIVED"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final SPAM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPAM_RECEIVED"

.field public static final VIDEO_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.VIDEO_RECEIVED"

.field public static final VOICE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.VOICE_RECEIVED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"

.field public static final WAP_PUSH_SPAM_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_SPAM_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1464
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 11
    .parameter "intent"

    .prologue
    .line 1973
    const-string/jumbo v8, "pdus"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v2, v8

    check-cast v2, [Ljava/lang/Object;

    .line 1974
    .local v2, messages:[Ljava/lang/Object;
    const-string v8, "format"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1975
    .local v0, format:Ljava/lang/String;
    array-length v8, v2

    new-array v5, v8, [[B

    .line 1976
    .local v5, pduObjs:[[B
    const-string/jumbo v8, "subscription"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1978
    .local v7, subId:I
    const-string/jumbo v8, "tag"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getMessagesFromIntent sub_id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v2

    if-ge v1, v8, :cond_0

    .line 1981
    aget-object v8, v2, v1

    check-cast v8, [B

    check-cast v8, [B

    aput-object v8, v5, v1

    .line 1980
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1983
    :cond_0
    array-length v8, v5

    new-array v6, v8, [[B

    .line 1984
    .local v6, pdus:[[B
    array-length v4, v6

    .line 1985
    .local v4, pduCount:I
    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 1986
    .local v3, msgs:[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 1987
    aget-object v8, v5, v1

    aput-object v8, v6, v1

    .line 1988
    aget-object v8, v6, v1

    invoke-static {v8, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 1989
    aget-object v8, v3, v1

    invoke-virtual {v8, v7}, Landroid/telephony/SmsMessage;->setSubId(I)V

    .line 1986
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1991
    :cond_1
    return-object v3
.end method
