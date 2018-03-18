.class public Lcom/android/server/net/ZsNetworkPolicyManagerService;
.super Lcom/android/server/net/NetworkPolicyManagerService;
.source "ZsNetworkPolicyManagerService.java"


# static fields
.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ZsNetworkPolicyManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mUidEnableData:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p4, "networkManagement"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 43
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v5

    invoke-static {}, Lcom/android/server/net/ZsNetworkPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 42
    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/ZsNetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p4, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p5, "time"    # Landroid/util/TrustedTime;
    .param p6, "systemDir"    # Ljava/io/File;
    .param p7, "suppressDefaultPolicy"    # Z

    .prologue
    .line 54
    invoke-direct/range {p0 .. p7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    .line 34
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/ZsNetworkPolicyManagerService;->mUidEnableData:Landroid/util/SparseBooleanArray;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/ZsNetworkPolicyManagerService;->mLock:Ljava/lang/Object;

    .line 57
    if-nez p4, :cond_0

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "missing networkManagement"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/android/server/net/ZsNetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 62
    iput-object p4, p0, Lcom/android/server/net/ZsNetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 53
    return-void
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isUidValidForRules(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 67
    const/16 v0, 0x3f5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3fb

    if-ne p0, v0, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 68
    :cond_1
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    .line 67
    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    return v0
.end method
