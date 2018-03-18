.class public final Lyulong/config/CPInternationalAddressUtil;
.super Ljava/lang/Object;
.source "CPInternationalAddressUtil.java"


# static fields
.field private static final DEFAULT_ACCESS_CODE:Ljava/lang/String; = "00"

.field private static final DIGITAL1:I = 0x1

.field private static final DIGITAL3:I = 0x3

.field private static final STRINGPLUS:Ljava/lang/String; = "+"

.field private static final TAG:Ljava/lang/String; = "CPInternaAddrUtil"

.field private static sIntance:Lyulong/config/CPInternationalAddressUtil;


# instance fields
.field private mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lyulong/config/CPInternationalAddressUtil;->sIntance:Lyulong/config/CPInternationalAddressUtil;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lyulong/config/CPInternationalAddressUtil;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/HbpcdUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/HbpcdUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyulong/config/CPInternationalAddressUtil;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 71
    const-string/jumbo v0, "CPInternaAddrUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CPInternationalAddressUtil,new mHbpcdUtils = ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lyulong/config/CPInternationalAddressUtil;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lyulong/config/CPInternationalAddressUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lyulong/config/CPInternationalAddressUtil;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lyulong/config/CPInternationalAddressUtil;->sIntance:Lyulong/config/CPInternationalAddressUtil;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lyulong/config/CPInternationalAddressUtil;

    invoke-direct {v0, p0}, Lyulong/config/CPInternationalAddressUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lyulong/config/CPInternationalAddressUtil;->sIntance:Lyulong/config/CPInternationalAddressUtil;

    .line 84
    :cond_0
    sget-object v0, Lyulong/config/CPInternationalAddressUtil;->sIntance:Lyulong/config/CPInternationalAddressUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getOperRecordMcc(I)Ljava/lang/String;
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    .line 93
    const-string/jumbo v3, "CPInternaAddrUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Start getOperRecord,phoneId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "regMcc":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "regOperID":Ljava/lang/String;
    const-string/jumbo v3, "CPInternaAddrUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "regOperID :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "regMcc":Ljava/lang/String;
    const-string/jumbo v3, "CPInternaAddrUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "regMcc :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "regMcc":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getRegIdd(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 114
    const-string/jumbo v3, "CPInternaAddrUtil"

    const-string/jumbo v4, "Start getRegIdd."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string/jumbo v3, "CPInternaAddrUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "phoneId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "regIdd":Ljava/lang/String;
    const/4 v2, 0x0

    .line 119
    .local v2, "regMcc":Ljava/lang/String;
    invoke-static {p1}, Lyulong/config/CPInternationalAddressUtil;->getOperRecordMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "regMcc":Ljava/lang/String;
    const-string/jumbo v3, "CPInternaAddrUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "regMcc :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-eqz v2, :cond_0

    .line 123
    :try_start_0
    iget-object v3, p0, Lyulong/config/CPInternationalAddressUtil;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HbpcdUtils;->getIddByMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 128
    .end local v1    # "regIdd":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    const-string/jumbo v1, "00"

    .line 131
    :cond_1
    const-string/jumbo v3, "CPInternaAddrUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRegIdd end, regIdd :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-object v1

    .line 124
    .restart local v1    # "regIdd":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
