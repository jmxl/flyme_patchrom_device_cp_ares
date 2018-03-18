.class public Lyulong/config/CPCardCombInfo;
.super Ljava/lang/Object;
.source "CPCardCombInfo.java"


# static fields
.field private static final CM_6MODE:Ljava/lang/String; = "cm_6mode"

.field private static final CM_CUSTOM_5MODE:Ljava/lang/String; = "cm_custom_5mode"

.field private static final CM_CUSTOM_6MODE:Ljava/lang/String; = "cm_custom_6mode"

.field private static final DBG:Z = true

.field private static final PARTNER_APNS_PATH:Ljava/lang/String; = "etc/cardcombs_conf.xml"

.field private static final TAG:Ljava/lang/String; = "CPCardCombInfo"


# instance fields
.field private cardType:[Ljava/lang/String;

.field private mCanSwitch:Z

.field private mCard0Info:Ljava/lang/String;

.field private mCard1Info:Ljava/lang/String;

.field private mPreferNWofPrimaryCard:I

.field private mPreferNWofSeconderyCard:I

.field private mPrimarySlotId:I

.field private prefNWforAll:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-array v0, v3, [Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "CMUSIM"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "CMSIM"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "OVERSEAUSIM"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "OVERSEASIM"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTCSIM"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "CTRUIM"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "CUUSIM"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "CUSIM"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "NOCARD"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 62
    iput-object v0, p0, Lyulong/config/CPCardCombInfo;->cardType:[Ljava/lang/String;

    .line 65
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lyulong/config/CPCardCombInfo;->prefNWforAll:[I

    .line 46
    return-void

    .line 65
    :array_0
    .array-data 4
        0x14
        0x14
        0x14
        0x14
        0xa
        0xa
        0x14
        0x14
        0x1
    .end array-data
.end method

.method private getCardCombInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "confparser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 193
    const-string/jumbo v0, ""

    .line 194
    .local v0, "combInfoStr":Ljava/lang/String;
    sget-object v4, Lcom/zeusis/hydra/utils/HydraCarrierCust$CarrierType;->CMCC:Lcom/zeusis/hydra/utils/HydraCarrierCust$CarrierType;

    invoke-virtual {v4}, Lcom/zeusis/hydra/utils/HydraCarrierCust$CarrierType;->isMatch()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    sget-object v4, Lcom/zeusis/hydra/utils/HydraCarrierCust$SalesChannel;->CATEGORY_A:Lcom/zeusis/hydra/utils/HydraCarrierCust$SalesChannel;

    invoke-virtual {v4}, Lcom/zeusis/hydra/utils/HydraCarrierCust$SalesChannel;->isMatch()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/zeusis/hydra/utils/HydraCarrierCust$SalesChannel;->CATEGORY_B:Lcom/zeusis/hydra/utils/HydraCarrierCust$SalesChannel;

    invoke-virtual {v4}, Lcom/zeusis/hydra/utils/HydraCarrierCust$SalesChannel;->isMatch()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    :cond_0
    const-string/jumbo v4, "cm_custom_6mode"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string/jumbo v4, "CPCardCombInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "China Mobile custom 6 mode product, combInfoStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 214
    :cond_1
    const-string/jumbo v2, "CPCardCombInfo"

    const-string/jumbo v3, "get combInfoStr failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 200
    :cond_2
    const-string/jumbo v4, "cm_6mode"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string/jumbo v4, "CPCardCombInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "China Mobile 6 mode product, combInfoStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_3
    sget-object v4, Lcom/zeusis/hydra/utils/HydraCarrierCust$CarrierType;->CU:Lcom/zeusis/hydra/utils/HydraCarrierCust$CarrierType;

    invoke-virtual {v4}, Lcom/zeusis/hydra/utils/HydraCarrierCust$CarrierType;->isMatch()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 206
    const-string/jumbo v4, "cu_gtwl"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string/jumbo v4, "CPCardCombInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "China Unicom product but not support L+C, combInfoStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_4
    const-string/jumbo v2, "CPCardCombInfo"

    const-string/jumbo v3, "not cmcc or cu, maybe there is error"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 217
    :cond_5
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "splitStr":[Ljava/lang/String;
    if-eqz v1, :cond_6

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    array-length v4, v1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_7

    .line 219
    :cond_6
    const-string/jumbo v2, "CPCardCombInfo"

    const-string/jumbo v3, "get incorrect combInfoStr"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 222
    :cond_7
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lyulong/config/CPCardCombInfo;->mPrimarySlotId:I

    .line 223
    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lyulong/config/CPCardCombInfo;->mPreferNWofPrimaryCard:I

    .line 224
    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lyulong/config/CPCardCombInfo;->mPreferNWofSeconderyCard:I

    .line 225
    const/4 v4, 0x3

    aget-object v4, v1, v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_1
    iput-boolean v2, p0, Lyulong/config/CPCardCombInfo;->mCanSwitch:Z

    .line 226
    const-string/jumbo v2, "CPCardCombInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCardCombInfo -- mPrimarySlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lyulong/config/CPCardCombInfo;->mPrimarySlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 227
    const-string/jumbo v4, ", mPreferNWofPrimaryCard = "

    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 227
    iget v4, p0, Lyulong/config/CPCardCombInfo;->mPreferNWofPrimaryCard:I

    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 228
    const-string/jumbo v4, ", mPreferNWofSeconderyCard = "

    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 228
    iget v4, p0, Lyulong/config/CPCardCombInfo;->mPreferNWofSeconderyCard:I

    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 229
    const-string/jumbo v4, ", mCanSwitch = "

    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 229
    iget-boolean v4, p0, Lyulong/config/CPCardCombInfo;->mCanSwitch:Z

    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    :cond_8
    move v2, v3

    .line 225
    goto :goto_1
.end method

.method private gotoCorrectComb(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "confparser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 174
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 175
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 174
    if-eqz v0, :cond_0

    .line 178
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 179
    const-string/jumbo v0, "slot1"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lyulong/config/CPCardCombInfo;->mCard1Info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 178
    if-eqz v0, :cond_1

    .line 180
    const-string/jumbo v0, "CPCardCombInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gotoCorrectComb -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    const-string/jumbo v2, ", slot1 = "

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    const-string/jumbo v2, "slot1"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    return-void

    .line 184
    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method private gotoNextCardComb(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "confparser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    const-string/jumbo v0, ""

    .line 152
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 153
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 155
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 156
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string/jumbo v1, "cardcomb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-string/jumbo v1, "CPCardCombInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gotoNextCardComb -- new CardComb, slot0 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    const-string/jumbo v3, "slot0"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 150
    :cond_1
    return-void
.end method

.method private setInfoForCM6Mode()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 236
    const/4 v0, -0x1

    .line 237
    .local v0, "card0Index":I
    const/4 v1, -0x1

    .line 238
    .local v1, "card1Index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lyulong/config/CPCardCombInfo;->cardType:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 239
    iget-object v5, p0, Lyulong/config/CPCardCombInfo;->mCard0Info:Ljava/lang/String;

    iget-object v8, p0, Lyulong/config/CPCardCombInfo;->cardType:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    move v0, v2

    .line 242
    :cond_0
    iget-object v5, p0, Lyulong/config/CPCardCombInfo;->mCard1Info:Ljava/lang/String;

    iget-object v8, p0, Lyulong/config/CPCardCombInfo;->cardType:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 243
    move v1, v2

    .line 245
    :cond_1
    if-lez v0, :cond_4

    if-lez v1, :cond_4

    .line 249
    :cond_2
    if-ge v0, v1, :cond_5

    move v5, v6

    :goto_1
    iput v5, p0, Lyulong/config/CPCardCombInfo;->mPrimarySlotId:I

    .line 250
    if-ge v0, v1, :cond_6

    move v3, v0

    .line 251
    .local v3, "primaryIndex":I
    :goto_2
    if-le v0, v1, :cond_7

    move v4, v0

    .line 252
    .local v4, "secondaryIndex":I
    :goto_3
    iget-object v5, p0, Lyulong/config/CPCardCombInfo;->prefNWforAll:[I

    aget v5, v5, v3

    iput v5, p0, Lyulong/config/CPCardCombInfo;->mPreferNWofPrimaryCard:I

    .line 253
    iget-object v5, p0, Lyulong/config/CPCardCombInfo;->prefNWforAll:[I

    aget v5, v5, v4

    iput v5, p0, Lyulong/config/CPCardCombInfo;->mPreferNWofSeconderyCard:I

    .line 254
    iget-object v5, p0, Lyulong/config/CPCardCombInfo;->mCard0Info:Ljava/lang/String;

    iget-object v8, p0, Lyulong/config/CPCardCombInfo;->cardType:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lyulong/config/CPCardCombInfo;->mCard1Info:Ljava/lang/String;

    iget-object v8, p0, Lyulong/config/CPCardCombInfo;->cardType:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 255
    :cond_3
    iput-boolean v6, p0, Lyulong/config/CPCardCombInfo;->mCanSwitch:Z

    .line 259
    :goto_4
    const-string/jumbo v5, "CPCardCombInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "China Mobile 6 Mode -- mPrimarySlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lyulong/config/CPCardCombInfo;->mPrimarySlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 260
    const-string/jumbo v7, ", mPreferNWofPrimaryCard = "

    .line 259
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 260
    iget v7, p0, Lyulong/config/CPCardCombInfo;->mPreferNWofPrimaryCard:I

    .line 259
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 261
    const-string/jumbo v7, ", mPreferNWofSeconderyCard = "

    .line 259
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 261
    iget v7, p0, Lyulong/config/CPCardCombInfo;->mPreferNWofSeconderyCard:I

    .line 259
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 262
    const-string/jumbo v7, ", mCanSwitch = "

    .line 259
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 262
    iget-boolean v7, p0, Lyulong/config/CPCardCombInfo;->mCanSwitch:Z

    .line 259
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 238
    .end local v3    # "primaryIndex":I
    .end local v4    # "secondaryIndex":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    move v5, v7

    .line 249
    goto :goto_1

    .line 250
    :cond_6
    move v3, v1

    .restart local v3    # "primaryIndex":I
    goto :goto_2

    .line 251
    :cond_7
    move v4, v1

    .restart local v4    # "secondaryIndex":I
    goto :goto_3

    .line 257
    :cond_8
    iput-boolean v7, p0, Lyulong/config/CPCardCombInfo;->mCanSwitch:Z

    goto :goto_4
.end method


# virtual methods
.method public getCanSwitch()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lyulong/config/CPCardCombInfo;->mCanSwitch:Z

    return v0
.end method

.method public getPreferNWofPrimaryCard()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lyulong/config/CPCardCombInfo;->mPreferNWofPrimaryCard:I

    return v0
.end method

.method public getPreferNWofSeconderyCard()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lyulong/config/CPCardCombInfo;->mPreferNWofSeconderyCard:I

    return v0
.end method

.method public getPrimarySlotId()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lyulong/config/CPCardCombInfo;->mPrimarySlotId:I

    return v0
.end method

.method public readCardCombInfoFromXML([Ljava/lang/String;)V
    .locals 11
    .param p1, "cardInfo"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 74
    array-length v7, p1

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 75
    const-string/jumbo v7, "CPCardCombInfo"

    const-string/jumbo v8, "readCardCombInfoFromXML -- incorrect paras"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 78
    :cond_0
    const/4 v7, 0x0

    aget-object v7, p1, v7

    iput-object v7, p0, Lyulong/config/CPCardCombInfo;->mCard0Info:Ljava/lang/String;

    .line 79
    aget-object v7, p1, v10

    iput-object v7, p0, Lyulong/config/CPCardCombInfo;->mCard1Info:Ljava/lang/String;

    .line 82
    sget-object v7, Lcom/zeusis/hydra/utils/HydraCarrierCust$SalesChannel;->CATEGORY_C:Lcom/zeusis/hydra/utils/HydraCarrierCust$SalesChannel;

    invoke-virtual {v7}, Lcom/zeusis/hydra/utils/HydraCarrierCust$SalesChannel;->isMatch()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    invoke-direct {p0}, Lyulong/config/CPCardCombInfo;->setInfoForCM6Mode()V

    .line 84
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    .line 88
    .local v0, "confFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 89
    .local v2, "confreader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 91
    .local v1, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "etc/cardcombs_conf.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v0, "confFile":Ljava/io/File;
    const-string/jumbo v7, "CPCardCombInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "confFile = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    .end local v2    # "confreader":Ljava/io/FileReader;
    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .local v2, "confreader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 102
    .local v1, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 103
    const-string/jumbo v7, "cardcombinfos"

    invoke-static {v1, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 104
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 105
    const-string/jumbo v6, ""

    .line 106
    .local v6, "slot0":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v10, :cond_8

    .line 107
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 126
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    .end local v1    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "slot0":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 131
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v7, "CPCardCombInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    if-eqz v2, :cond_3

    .line 136
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 73
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void

    .line 95
    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v1, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v3

    .line 96
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v7, "CPCardCombInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can not open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 109
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .local v1, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    .restart local v6    # "slot0":Ljava/lang/String;
    :pswitch_0
    :try_start_4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "cardcomb"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 110
    const-string/jumbo v7, "slot0"

    const/4 v8, 0x0

    invoke-interface {v1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    const-string/jumbo v7, "CPCardCombInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mCard0Info = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lyulong/config/CPCardCombInfo;->mCard0Info:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", slot0 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v7, p0, Lyulong/config/CPCardCombInfo;->mCard0Info:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 113
    invoke-direct {p0, v1}, Lyulong/config/CPCardCombInfo;->gotoNextCardComb(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 133
    .end local v1    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "slot0":Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 135
    if-eqz v2, :cond_4

    .line 136
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 133
    :cond_4
    :goto_2
    throw v7

    .line 115
    .restart local v1    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "slot0":Ljava/lang/String;
    :cond_5
    :try_start_6
    const-string/jumbo v7, "CPCardCombInfo"

    const-string/jumbo v8, "get correct slot0"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 118
    :cond_6
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "info"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    const-string/jumbo v7, "CPCardCombInfo"

    const-string/jumbo v8, "begin to look for slot1"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, v1}, Lyulong/config/CPCardCombInfo;->gotoCorrectComb(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 121
    invoke-direct {p0, v1}, Lyulong/config/CPCardCombInfo;->getCardCombInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 135
    if-eqz v2, :cond_7

    .line 136
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 122
    :cond_7
    :goto_3
    return-void

    .line 138
    :catch_2
    move-exception v4

    .line 139
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v7, "CPCardCombInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IOException in spnReader.close() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 135
    .end local v4    # "e":Ljava/io/IOException;
    :cond_8
    if-eqz v2, :cond_3

    .line 136
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 138
    :catch_3
    move-exception v4

    .line 139
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "CPCardCombInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IOException in spnReader.close() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 138
    .end local v1    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "slot0":Ljava/lang/String;
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 139
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "CPCardCombInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IOException in spnReader.close() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 138
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .line 139
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "CPCardCombInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IOException in spnReader.close() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 107
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
