.class public Lyulong/config/CPCardPriority;
.super Ljava/lang/Object;
.source "CPCardPriority.java"


# static fields
.field private static final CMCC:Ljava/lang/String; = "CM"

.field private static final CT:Ljava/lang/String; = "CT"

.field private static final CU:Ljava/lang/String; = "CU"

.field private static final NOCARD:Ljava/lang/String; = "NOCARD"

.field private static final OVERSEA:Ljava/lang/String; = "OVERSEA"

.field private static final PROJECT_SIM_NUM:I

.field private static final TAG:Ljava/lang/String; = "CPCardPriority"

.field private static sCP:Lyulong/config/CPCardPriority;


# instance fields
.field private cardInfo:[Ljava/lang/String;

.field private mCci:Lyulong/config/CPCardCombInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 41
    sput v0, Lyulong/config/CPCardPriority;->PROJECT_SIM_NUM:I

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget v0, Lyulong/config/CPCardPriority;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lyulong/config/CPCardPriority;->cardInfo:[Ljava/lang/String;

    .line 54
    new-instance v0, Lyulong/config/CPCardCombInfo;

    invoke-direct {v0}, Lyulong/config/CPCardCombInfo;-><init>()V

    iput-object v0, p0, Lyulong/config/CPCardPriority;->mCci:Lyulong/config/CPCardCombInfo;

    .line 53
    return-void
.end method

.method public static getInstance()Lyulong/config/CPCardPriority;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lyulong/config/CPCardPriority;->sCP:Lyulong/config/CPCardPriority;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lyulong/config/CPCardPriority;

    invoke-direct {v0}, Lyulong/config/CPCardPriority;-><init>()V

    sput-object v0, Lyulong/config/CPCardPriority;->sCP:Lyulong/config/CPCardPriority;

    .line 62
    :cond_0
    sget-object v0, Lyulong/config/CPCardPriority;->sCP:Lyulong/config/CPCardPriority;

    return-object v0
.end method


# virtual methods
.method public canSwitchLTEPrimaryCard()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lyulong/config/CPCardPriority;->mCci:Lyulong/config/CPCardCombInfo;

    invoke-virtual {v0}, Lyulong/config/CPCardCombInfo;->getCanSwitch()Z

    move-result v0

    return v0
.end method

.method public getPrimaryPrefNetForOperator()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lyulong/config/CPCardPriority;->mCci:Lyulong/config/CPCardCombInfo;

    invoke-virtual {v0}, Lyulong/config/CPCardCombInfo;->getPreferNWofPrimaryCard()I

    move-result v0

    return v0
.end method

.method public getPrimarySlotIdForOperator()I
    .locals 3

    .prologue
    .line 136
    iget-object v2, p0, Lyulong/config/CPCardPriority;->mCci:Lyulong/config/CPCardCombInfo;

    invoke-virtual {v2}, Lyulong/config/CPCardCombInfo;->getPrimarySlotId()I

    move-result v1

    .line 137
    .local v1, "primarySubId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 138
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->isSupportLTE1X()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 142
    .local v0, "defaultDataSub":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v1

    .line 147
    .end local v0    # "defaultDataSub":I
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getPrimarySlotId()I

    move-result v1

    goto :goto_0
.end method

.method public getSeconderyPrefNetForOperator()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lyulong/config/CPCardPriority;->mCci:Lyulong/config/CPCardCombInfo;

    invoke-virtual {v0}, Lyulong/config/CPCardCombInfo;->getPreferNWofSeconderyCard()I

    move-result v0

    return v0
.end method

.method public setCardInfo([Ljava/lang/String;)V
    .locals 10
    .param p1, "iccIds"    # [Ljava/lang/String;

    .prologue
    .line 66
    const/4 v4, 0x0

    .local v4, "slotId":I
    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_c

    .line 67
    aget-object v7, p1, v4

    if-eqz v7, :cond_0

    aget-object v7, p1, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-ge v7, v8, :cond_1

    .line 68
    :cond_0
    const-string/jumbo v7, "CPCardPriority"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "there is no card in slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v7, p0, Lyulong/config/CPCardPriority;->cardInfo:[Ljava/lang/String;

    const-string/jumbo v8, "NOCARD"

    aput-object v8, v7, v4

    .line 66
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_1
    aget-object v7, p1, v4

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->getOperatorByIccId(Ljava/lang/String;)I

    move-result v2

    .line 73
    .local v2, "cardOperator":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    .line 74
    .local v6, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 75
    .local v0, "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    if-nez v6, :cond_5

    .line 76
    const-string/jumbo v7, "CPCardPriority"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "can not get Uicc information of slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-nez v2, :cond_2

    .line 78
    iget-object v7, p0, Lyulong/config/CPCardPriority;->cardInfo:[Ljava/lang/String;

    const-string/jumbo v8, "NOCARD"

    aput-object v8, v7, v4

    goto :goto_1

    .line 80
    :cond_2
    const/4 v7, 0x2

    if-ne v2, v7, :cond_4

    .line 81
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 98
    :cond_3
    :goto_2
    const-string/jumbo v1, "NOCARD"

    .line 99
    .local v1, "cardAppName":Ljava/lang/String;
    const-string/jumbo v7, "CPCardPriority"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "card["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "].appType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v7, :cond_7

    .line 101
    const-string/jumbo v1, "SIM"

    .line 115
    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 126
    iget-object v7, p0, Lyulong/config/CPCardPriority;->cardInfo:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OVERSEA"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 129
    :goto_4
    const-string/jumbo v7, "CPCardPriority"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "card["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lyulong/config/CPCardPriority;->cardInfo:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 83
    .end local v1    # "cardAppName":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_2

    .line 86
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 87
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 88
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    .line 89
    .local v5, "tempAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    const-string/jumbo v7, "CPCardPriority"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "card["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "].appType["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-le v7, v8, :cond_6

    .line 91
    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v7, :cond_6

    .line 92
    move-object v0, v5

    .line 86
    .end local v5    # "tempAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 102
    .end local v3    # "i":I
    .restart local v1    # "cardAppName":Ljava/lang/String;
    :cond_7
    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v7, :cond_8

    .line 103
    const-string/jumbo v1, "USIM"

    goto/16 :goto_3

    .line 104
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v7, :cond_9

    .line 105
    const-string/jumbo v1, "RUIM"

    goto/16 :goto_3

    .line 106
    :cond_9
    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v7, :cond_a

    .line 107
    const-string/jumbo v1, "CSIM"

    goto/16 :goto_3

    .line 108
    :cond_a
    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v7, :cond_b

    .line 109
    const-string/jumbo v1, "ISIM"

    goto/16 :goto_3

    .line 111
    :cond_b
    iget-object v7, p0, Lyulong/config/CPCardPriority;->cardInfo:[Ljava/lang/String;

    const-string/jumbo v8, "NOCARD"

    aput-object v8, v7, v4

    goto/16 :goto_1

    .line 117
    :pswitch_0
    iget-object v7, p0, Lyulong/config/CPCardPriority;->cardInfo:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto/16 :goto_4

    .line 120
    :pswitch_1
    iget-object v7, p0, Lyulong/config/CPCardPriority;->cardInfo:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CU"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto/16 :goto_4

    .line 123
    :pswitch_2
    iget-object v7, p0, Lyulong/config/CPCardPriority;->cardInfo:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto/16 :goto_4

    .line 132
    .end local v0    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v1    # "cardAppName":Ljava/lang/String;
    .end local v2    # "cardOperator":I
    .end local v6    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_c
    iget-object v7, p0, Lyulong/config/CPCardPriority;->mCci:Lyulong/config/CPCardCombInfo;

    iget-object v8, p0, Lyulong/config/CPCardPriority;->cardInfo:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Lyulong/config/CPCardCombInfo;->readCardCombInfoFromXML([Ljava/lang/String;)V

    .line 65
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
