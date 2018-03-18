.class public Lse/dirac/android/SystemServiceWatcher;
.super Ljava/lang/Object;
.source "SystemServiceWatcher.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/dirac/android/SystemServiceWatcher$LifeEvents;
    }
.end annotation


# static fields
.field public static final SERVICE_AUDIOFLINGER:Ljava/lang/String; = "media.audio_flinger"


# instance fields
.field private bind:Landroid/os/IBinder;

.field private final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final lifeEvents:Lse/dirac/android/SystemServiceWatcher$LifeEvents;

.field private final mainHandler:Landroid/os/Handler;

.field private final serviceName:Ljava/lang/String;

.field private final testForService:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lse/dirac/android/SystemServiceWatcher$LifeEvents;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lse/dirac/android/SystemServiceWatcher$1;

    invoke-direct {v0, p0}, Lse/dirac/android/SystemServiceWatcher$1;-><init>(Lse/dirac/android/SystemServiceWatcher;)V

    iput-object v0, p0, Lse/dirac/android/SystemServiceWatcher;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 37
    new-instance v0, Lse/dirac/android/SystemServiceWatcher$2;

    invoke-direct {v0, p0}, Lse/dirac/android/SystemServiceWatcher$2;-><init>(Lse/dirac/android/SystemServiceWatcher;)V

    iput-object v0, p0, Lse/dirac/android/SystemServiceWatcher;->testForService:Ljava/lang/Runnable;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lse/dirac/android/SystemServiceWatcher;->mainHandler:Landroid/os/Handler;

    .line 15
    if-eqz p2, :cond_0

    .line 18
    iput-object p2, p0, Lse/dirac/android/SystemServiceWatcher;->lifeEvents:Lse/dirac/android/SystemServiceWatcher$LifeEvents;

    .line 19
    iput-object p1, p0, Lse/dirac/android/SystemServiceWatcher;->serviceName:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher;->testForService:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 21
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lse/dirac/android/SystemServiceWatcher;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher;->bind:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$002(Lse/dirac/android/SystemServiceWatcher;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 6
    iput-object p1, p0, Lse/dirac/android/SystemServiceWatcher;->bind:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$100(Lse/dirac/android/SystemServiceWatcher;)Lse/dirac/android/SystemServiceWatcher$LifeEvents;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher;->lifeEvents:Lse/dirac/android/SystemServiceWatcher$LifeEvents;

    return-object v0
.end method

.method static synthetic access$200(Lse/dirac/android/SystemServiceWatcher;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher;->testForService:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lse/dirac/android/SystemServiceWatcher;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lse/dirac/android/SystemServiceWatcher;)Landroid/os/IBinder$DeathRecipient;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$500(Lse/dirac/android/SystemServiceWatcher;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lse/dirac/android/SystemServiceWatcher;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lse/dirac/android/SystemServiceWatcher;->testForService:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method
