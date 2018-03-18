.class public Landroid/net/PowerController;
.super Ljava/lang/Object;
.source "PowerController.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/PowerController$1;,
        Landroid/net/PowerController$2;,
        Landroid/net/PowerController$3;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/PowerController;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOMIZATION_CMCC:Ljava/lang/String; = "CN010200"

.field private static final CUSTOMIZATION_CTA:Ljava/lang/String; = "GL000001"

.field private static final CUSTOMIZATION_CTCC:Ljava/lang/String; = "CN030300"

.field private static final CUSTOMIZATION_GEN:Ljava/lang/String; = "GL000000"

.field private static final CUSTOMIZATION_NAME:Ljava/lang/String; = "ro.cust.customization"

.field private static final DEFAULT_PHONE_GATEWAYS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTC_GATEWAY:Ljava/lang/String; = "192.168.1.1"

.field private static final HTC_MACS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CONNECTED_BSSID:Ljava/lang/String; = "wlan.yulong.bssid"

.field public static final PROP_GATEWAY_ADDRESS:Ljava/lang/String; = "dhcp.wlan0.gateway"

.field public static final PROP_POWER_SETTINGS:Ljava/lang/String; = "persist.yulong.wifipower"

.field public static final REDUCE_POWER_AUTODISCONNECT:I = 0x2

.field public static final REDUCE_POWER_MOBILEAP:I = 0x1

.field private static final mCustomization:Ljava/lang/String;


# instance fields
.field private mTmp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "ro.cust.customization"

    const-string/jumbo v1, "GL000000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/PowerController;->mCustomization:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/net/PowerController$1;

    invoke-direct {v0}, Landroid/net/PowerController$1;-><init>()V

    sput-object v0, Landroid/net/PowerController;->DEFAULT_PHONE_GATEWAYS:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Landroid/net/PowerController$2;

    invoke-direct {v0}, Landroid/net/PowerController$2;-><init>()V

    sput-object v0, Landroid/net/PowerController;->HTC_MACS:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Landroid/net/PowerController$3;

    invoke-direct {v0}, Landroid/net/PowerController$3;-><init>()V

    .line 233
    sput-object v0, Landroid/net/PowerController;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "tmp"    # I

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Landroid/net/PowerController;->mTmp:I

    .line 105
    return-void
.end method

.method public static getIsMobileAP()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 145
    const-string/jumbo v2, "dhcp.wlan0.gateway"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "gateWayAdd":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/PowerController;->judegeMobileAP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/net/PowerController;->isCustomizationNotOk()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getPowerSettings()I
    .locals 2

    .prologue
    .line 201
    :try_start_0
    const-string/jumbo v1, "persist.yulong.wifipower"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x7

    return v1
.end method

.method public static getShouldJudgeMobileAP()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public static getShouleAutoDiscconnectUnavailableAP()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method private static getValue(I)Z
    .locals 4
    .param p0, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    invoke-static {}, Landroid/net/PowerController;->getPowerSettings()I

    move-result v0

    .line 175
    .local v0, "power":I
    packed-switch p0, :pswitch_data_0

    .line 181
    return v2

    .line 177
    :pswitch_0
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 179
    :pswitch_1
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    :goto_1
    return v1

    :cond_1
    move v1, v2

    goto :goto_1

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isCustomizationNotOk()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 51
    sget-object v1, Landroid/net/PowerController;->mCustomization:Ljava/lang/String;

    const-string/jumbo v2, "CN010200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/net/PowerController;->mCustomization:Ljava/lang/String;

    const-string/jumbo v2, "CN030300"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    sget-object v1, Landroid/net/PowerController;->mCustomization:Ljava/lang/String;

    const-string/jumbo v2, "CN010200"

    if-ne v1, v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    sget-object v1, Landroid/net/PowerController;->mCustomization:Ljava/lang/String;

    const-string/jumbo v2, "CN030300"

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHTCPhone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "gateWay"    # Ljava/lang/String;
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string/jumbo v2, "192.168.1.1"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "192.168.1.1"

    if-ne v2, p0, :cond_2

    .line 164
    :cond_0
    sget-object v2, Landroid/net/PowerController;->HTC_MACS:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "htcMac$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    .local v0, "htcMac":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    const/4 v2, 0x1

    return v2

    .line 170
    .end local v0    # "htcMac":Ljava/lang/String;
    .end local v1    # "htcMac$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private static judegeMobileAP(Ljava/lang/String;)Z
    .locals 2
    .param p0, "gateWay"    # Ljava/lang/String;

    .prologue
    .line 151
    if-eqz p0, :cond_1

    const-string/jumbo v1, ""

    if-eq p0, v1, :cond_1

    const-string/jumbo v1, "0.0.0.0"

    if-eq p0, v1, :cond_1

    .line 152
    sget-object v1, Landroid/net/PowerController;->DEFAULT_PHONE_GATEWAYS:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const/4 v1, 0x1

    return v1

    .line 155
    :cond_0
    const-string/jumbo v1, "wlan.yulong.bssid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "bssid":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/net/PowerController;->isHTCPhone(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 159
    .end local v0    # "bssid":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static savePowerSettings(I)V
    .locals 3
    .param p0, "powerSettings"    # I

    .prologue
    .line 208
    const-string/jumbo v0, "persist.yulong.wifipower"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public static setShouldJudgeMobileAP(Z)V
    .locals 0
    .param p0, "isShouldJudgeMobileAP"    # Z

    .prologue
    .line 119
    return-void
.end method

.method public static setShouleAutoDiscconnectUnavailableAP(Z)V
    .locals 0
    .param p0, "isShouleAutoDiscconnectUnavailableAP"    # Z

    .prologue
    .line 135
    return-void
.end method

.method private static setValue(IZ)V
    .locals 1
    .param p0, "position"    # I
    .param p1, "value"    # Z

    .prologue
    .line 185
    invoke-static {}, Landroid/net/PowerController;->getPowerSettings()I

    move-result v0

    .line 186
    .local v0, "power":I
    if-eqz p1, :cond_0

    .line 187
    and-int/lit16 v0, v0, 0xff

    .line 196
    :goto_0
    invoke-static {v0}, Landroid/net/PowerController;->savePowerSettings(I)V

    .line 184
    return-void

    .line 189
    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 191
    :pswitch_0
    and-int/lit16 v0, v0, 0xfe

    .line 193
    :pswitch_1
    and-int/lit16 v0, v0, 0xfd

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget v0, p0, Landroid/net/PowerController;->mTmp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 223
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
