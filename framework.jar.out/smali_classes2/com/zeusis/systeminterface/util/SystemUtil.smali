.class public Lcom/zeusis/systeminterface/util/SystemUtil;
.super Ljava/lang/Object;
.source "SystemUtil.java"


# static fields
.field private static final DEFAULT_SKIN_TYPE:I = 0x0

.field public static final INPUT_SKIN_TYPE_DARK:I = 0x1

.field public static final INPUT_SKIN_TYPE_LIGHT:I = 0x0

.field private static final PROPERTY_CARRIERTYPE:Ljava/lang/String; = "persist.zeusis.sys.carriertype"

.field private static final PROPERTY_CARRIER_DEFAULT:Ljava/lang/String; = "00"

.field private static final PROPERTY_COUNTRY:Ljava/lang/String; = "persist.zeusis.sys.country"

.field private static final PROPERTY_COUNTRY_DEFAULT:Ljava/lang/String; = "GL"

.field private static final PROPERTY_FACILITYID:Ljava/lang/String; = "persist.zeusis.sys.facilityid"

.field private static final PROPERTY_FACTORY_FLAG:Ljava/lang/String; = "persist.zeusis.sys.factoryflag"

.field private static final PROPERTY_RESERVED:Ljava/lang/String; = "persist.zeusis.sys.reserved"

.field private static final PROPERTY_ROOTED:Ljava/lang/String; = "persist.zeusis.sys.rooted"

.field private static final PROPERTY_SALESCHANNEL:Ljava/lang/String; = "persist.zeusis.sys.saleschannel"

.field private static final PROPERTY_SALESCHANNEL_DEFAULT:Ljava/lang/String; = "00"

.field private static final PROPERTY_TARGET:Ljava/lang/String; = "persist.zeusis.sys.target"

.field private static final PROPERTY_TARGET_DEFAULT:Ljava/lang/String; = "00"

.field private static final SETTINGS_PROPERTY:Ljava/lang/String; = "zeusis.input.skin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factorySeted()Z
    .locals 3

    .prologue
    .line 144
    const-string/jumbo v1, "persist.zeusis.sys.factoryflag"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "factoryFlag":Ljava/lang/String;
    const-string/jumbo v1, "T"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const/4 v1, 0x1

    return v1

    .line 148
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getCarrierType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    const-string/jumbo v0, "persist.zeusis.sys.carriertype"

    const-string/jumbo v1, "00"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "persist.zeusis.sys.country"

    const-string/jumbo v1, "GL"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDMValue()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public static getFacilityId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    const-string/jumbo v0, "persist.zeusis.sys.facilityid"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static getReserved()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    const-string/jumbo v0, "persist.zeusis.sys.reserved"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSalesChannel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "persist.zeusis.sys.saleschannel"

    const-string/jumbo v1, "00"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSkinType(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 66
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "zeusis.input.skin"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 67
    .local v2, "value":I
    return v2

    .line 68
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "value":I
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    return v5
.end method

.method public static getTarget()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "persist.zeusis.sys.target"

    const-string/jumbo v1, "00"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasRoot()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public static isOversea()Z
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lcom/zeusis/systeminterface/util/SystemUtil;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const/4 v1, 0x1

    return v1

    .line 175
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static rooted()Z
    .locals 4

    .prologue
    .line 157
    const-string/jumbo v2, "persist.zeusis.sys.rooted"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "rooted":Ljava/lang/String;
    const-string/jumbo v2, "persist.zeusis.sys.factoryflag"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "factoryFlag":Ljava/lang/String;
    const-string/jumbo v2, "T"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "T"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    const/4 v2, 0x1

    return v2

    .line 162
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static setIMSI(Ljava/lang/String;)V
    .locals 0
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    .line 125
    return-void
.end method

.method public static setSecurityFlag(I)V
    .locals 0
    .param p0, "flag"    # I

    .prologue
    .line 134
    return-void
.end method

.method public static setSkinType(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 80
    return-void
.end method
