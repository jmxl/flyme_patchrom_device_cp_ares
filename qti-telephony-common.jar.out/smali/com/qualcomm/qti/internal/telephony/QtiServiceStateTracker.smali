.class public Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "QtiServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;
    }
.end annotation


# static fields
.field private static final ACTION_MANAGED_ROAMING_IND:Ljava/lang/String; = "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "QtiServiceStateTracker"

.field private static final VDBG:Z


# instance fields
.field private final ACTION_RAC_CHANGED:Ljava/lang/String;

.field private mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mQtiPlmnOverride:Lcom/qti/internal/telephony/QtiPlmnOverride;

.field private mRac:I

.field private final mRacChange:Ljava/lang/String;

.field private mRat:I

.field private final mRatInfo:Ljava/lang/String;

.field private mTac:I


# direct methods
.method static synthetic -set0(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;I)I
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRac:I

    return p1
.end method

.method static synthetic -set1(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;I)I
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRat:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->enableBackgroundData()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 54
    const-string/jumbo v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->ACTION_RAC_CHANGED:Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "rat"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRatInfo:Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "rac"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRacChange:Ljava/lang/String;

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mTac:I

    .line 61
    new-instance v1, Lcom/android/internal/telephony/ConfigResourceUtil;

    invoke-direct {v1}, Lcom/android/internal/telephony/ConfigResourceUtil;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    .line 63
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    new-instance v1, Lcom/qti/internal/telephony/QtiPlmnOverride;

    invoke-direct {v1}, Lcom/qti/internal/telephony/QtiPlmnOverride;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/QtiPlmnOverride;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method private enableBackgroundData()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/net/ZeroBalanceHelper;

    invoke-direct {v0}, Landroid/net/ZeroBalanceHelper;-><init>()V

    .line 87
    .local v0, "helper":Landroid/net/ZeroBalanceHelper;
    invoke-virtual {v0}, Landroid/net/ZeroBalanceHelper;->getFeatureConfigValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/net/ZeroBalanceHelper;->getBgDataProperty()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 87
    if-eqz v1, :cond_0

    .line 89
    const-string/jumbo v1, "zerobalance"

    const-string/jumbo v2, "Enabling the background data on LAU/RAU"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Landroid/net/ZeroBalanceHelper;->setBgDataProperty(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method private setOperatorConsideredDomesticRoaming(Landroid/telephony/ServiceState;)V
    .locals 11
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x0

    .line 178
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v5

    .line 179
    .local v5, "subId":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "operatorNumeric":Ljava/lang/String;
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v7

    .line 182
    const v8, 0x1070068

    .line 181
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "numericArray":[Ljava/lang/String;
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v7

    .line 186
    const v8, 0x1070069

    .line 185
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "numericExceptionsArray":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v7, v2

    if-nez v7, :cond_1

    .line 192
    :cond_0
    return-void

    .line 190
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 189
    if-nez v7, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "isDomestic":Z
    array-length v8, v2

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v1, v2, v7

    .line 197
    .local v1, "numeric":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 199
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 200
    const/4 v0, 0x1

    .line 205
    .end local v1    # "numeric":Ljava/lang/String;
    :cond_2
    array-length v7, v3

    if-eqz v7, :cond_3

    if-eqz v0, :cond_3

    .line 206
    array-length v7, v3

    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v1, v3, v6

    .line 207
    .restart local v1    # "numeric":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 209
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 216
    .end local v1    # "numeric":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 217
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 177
    :cond_4
    return-void

    .line 196
    .restart local v1    # "numeric":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 206
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 12
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 162
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 98
    :pswitch_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    .line 100
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 101
    iget-object v6, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    .line 102
    .local v6, "states":[Ljava/lang/String;
    const/4 v4, 0x4

    .line 103
    .local v4, "regState":I
    array-length v8, v6

    if-lez v8, :cond_1

    .line 105
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 111
    :cond_1
    :goto_1
    const/4 v8, 0x3

    if-eq v4, v8, :cond_2

    .line 112
    const/16 v8, 0xd

    if-ne v4, v8, :cond_0

    .line 113
    :cond_2
    array-length v8, v6

    const/16 v9, 0xe

    if-lt v8, v9, :cond_0

    .line 115
    const/16 v8, 0xd

    :try_start_1
    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 117
    .local v5, "rejCode":I
    const/16 v8, 0xa

    if-ne v5, v8, :cond_0

    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " Posting Managed roaming intent sub = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 119
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v9

    .line 118
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->log(Ljava/lang/String;)V

    .line 121
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "subscription"

    .line 123
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v9

    .line 122
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 126
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "rejCode":I
    :catch_0
    move-exception v1

    .line 127
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error parsing regCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 107
    .restart local v1    # "ex":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error parsing RegistrationState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "regState":I
    .end local v6    # "states":[Ljava/lang/String;
    :pswitch_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    .line 135
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 136
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 138
    .local v3, "opNames":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v8, v3

    const/4 v9, 0x3

    if-lt v8, v9, :cond_0

    .line 140
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->getPhoneId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 141
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->getPhoneId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "brandOverride":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_4

    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->log(Ljava/lang/String;)V

    .line 145
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-virtual {v8, v0, v0, v9}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    .end local v0    # "brandOverride":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 146
    .restart local v0    # "brandOverride":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/QtiPlmnOverride;

    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Lcom/qti/internal/telephony/QtiPlmnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 147
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 148
    const-string/jumbo v9, "config_plmn_name_override_enabled"

    .line 147
    invoke-static {v8, v9}, Lcom/android/internal/telephony/ConfigResourceUtil;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 146
    if-eqz v8, :cond_5

    .line 149
    const/4 v7, 0x0

    .line 150
    .local v7, "strOperatorLong":Ljava/lang/String;
    const-string/jumbo v8, "EVENT_POLL_STATE_OPERATOR: use plmnOverride"

    invoke-virtual {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->log(Ljava/lang/String;)V

    .line 151
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/QtiPlmnOverride;

    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Lcom/qti/internal/telephony/QtiPlmnOverride;->getPlmn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "strOperatorLong":Ljava/lang/String;
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v9, 0x1

    aget-object v9, v3, v9

    const/4 v10, 0x2

    aget-object v10, v3, v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    .end local v7    # "strOperatorLong":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v9, 0x0

    aget-object v9, v3, v9

    const/4 v10, 0x1

    aget-object v10, v3, v10

    const/4 v11, 0x2

    aget-object v11, v3, v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected setRoamingType(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "currentServiceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 170
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 171
    .local v0, "isVoiceInService":Z
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    .line 171
    if-eqz v1, :cond_1

    .line 173
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->setOperatorConsideredDomesticRoaming(Landroid/telephony/ServiceState;)V

    .line 167
    :cond_1
    return-void
.end method
