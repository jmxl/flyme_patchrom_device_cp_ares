.class public Lcom/journeyui/server/SmartPolicyTrigger;
.super Ljava/lang/Object;
.source "SmartPolicyTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyui/server/SmartPolicyTrigger$1;,
        Lcom/journeyui/server/SmartPolicyTrigger$AppDeathRecipient;
    }
.end annotation


# static fields
.field public static final SMART_POLICY_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "SmartPolicyTrigger"

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lcom/journeyui/server/SmartPolicyTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppDeathRecipient:Lcom/journeyui/server/SmartPolicyTrigger$AppDeathRecipient;

.field private final mLock:Ljava/lang/Object;

.field private mSmartPolicyService:Lcom/journeyui/server/ISmartPolicyService;


# direct methods
.method static synthetic -get0(Lcom/journeyui/server/SmartPolicyTrigger;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/journeyui/server/SmartPolicyTrigger;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/journeyui/server/SmartPolicyTrigger;Lcom/journeyui/server/ISmartPolicyService;)Lcom/journeyui/server/ISmartPolicyService;
    .locals 0

    iput-object p1, p0, Lcom/journeyui/server/SmartPolicyTrigger;->mSmartPolicyService:Lcom/journeyui/server/ISmartPolicyService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-string/jumbo v0, "ro.zeusis.smartpolicy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/journeyui/server/SmartPolicyTrigger;->SMART_POLICY_ENABLED:Z

    .line 27
    new-instance v0, Lcom/journeyui/server/SmartPolicyTrigger$1;

    invoke-direct {v0}, Lcom/journeyui/server/SmartPolicyTrigger$1;-><init>()V

    sput-object v0, Lcom/journeyui/server/SmartPolicyTrigger;->gDefault:Landroid/util/Singleton;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/journeyui/server/SmartPolicyTrigger;->mLock:Ljava/lang/Object;

    .line 20
    new-instance v0, Lcom/journeyui/server/SmartPolicyTrigger$AppDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/journeyui/server/SmartPolicyTrigger$AppDeathRecipient;-><init>(Lcom/journeyui/server/SmartPolicyTrigger;Lcom/journeyui/server/SmartPolicyTrigger$AppDeathRecipient;)V

    iput-object v0, p0, Lcom/journeyui/server/SmartPolicyTrigger;->mAppDeathRecipient:Lcom/journeyui/server/SmartPolicyTrigger$AppDeathRecipient;

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/journeyui/server/SmartPolicyTrigger;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/journeyui/server/SmartPolicyTrigger;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/journeyui/server/SmartPolicyTrigger;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/journeyui/server/SmartPolicyTrigger;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/journeyui/server/SmartPolicyTrigger;

    return-object v0
.end method

.method private getService()Lcom/journeyui/server/ISmartPolicyService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    const-string/jumbo v1, "smartpolicyservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 53
    invoke-static {v0}, Lcom/journeyui/server/ISmartPolicyImpl;->asInterface(Landroid/os/IBinder;)Lcom/journeyui/server/ISmartPolicyService;

    move-result-object v1

    return-object v1

    .line 55
    :cond_0
    return-object v2
.end method


# virtual methods
.method public activityResumed(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v2, p0, Lcom/journeyui/server/SmartPolicyTrigger;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 36
    :try_start_0
    const-string/jumbo v1, "SmartPolicyTrigger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "activityResumed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    iget-object v1, p0, Lcom/journeyui/server/SmartPolicyTrigger;->mSmartPolicyService:Lcom/journeyui/server/ISmartPolicyService;

    if-nez v1, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/journeyui/server/SmartPolicyTrigger;->getService()Lcom/journeyui/server/ISmartPolicyService;

    move-result-object v1

    iput-object v1, p0, Lcom/journeyui/server/SmartPolicyTrigger;->mSmartPolicyService:Lcom/journeyui/server/ISmartPolicyService;

    .line 40
    iget-object v1, p0, Lcom/journeyui/server/SmartPolicyTrigger;->mSmartPolicyService:Lcom/journeyui/server/ISmartPolicyService;

    invoke-interface {v1}, Lcom/journeyui/server/ISmartPolicyService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/journeyui/server/SmartPolicyTrigger;->mAppDeathRecipient:Lcom/journeyui/server/SmartPolicyTrigger$AppDeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    .line 34
    return-void

    .line 42
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/journeyui/server/SmartPolicyTrigger;->mSmartPolicyService:Lcom/journeyui/server/ISmartPolicyService;

    invoke-interface {v1, p1}, Lcom/journeyui/server/ISmartPolicyService;->activityResumed(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 35
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
