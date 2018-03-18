.class public Landroid/app/AppOomManager;
.super Ljava/lang/Object;
.source "AppOomManager.java"


# static fields
.field public static final BACKUP_APP_ADJ:I = 0x12c

.field public static final CACHED_APP_MAX_ADJ:I = 0x38a

.field public static final CACHED_APP_MIN_ADJ:I = 0x384

.field public static final FOREGROUND_APP_ADJ:I = 0x0

.field public static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field public static final HOME_APP_ADJ:I = 0x258

.field public static final INVALID_ADJ:I = -0x2710

.field public static final NATIVE_ADJ:I = -0x3e8

.field public static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field public static final PERSISTENT_PROC_ADJ:I = -0x320

.field public static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field public static final PREVIOUS_APP_ADJ:I = 0x2bc

.field public static final SERVICE_ADJ:I = 0x1f4

.field public static final SERVICE_B_ADJ:I = 0x320

.field public static final SYSTEM_ADJ:I = -0x384

.field public static final UNKNOWN_ADJ:I = 0x3e9

.field public static final VISIBLE_APP_ADJ:I = 0x64

.field public static final VISIBLE_APP_LAYER_MAX:I = 0x63


# instance fields
.field final mContext:Landroid/content/Context;

.field final mService:Lcom/android/internal/app/IAppOomService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOomService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOomService;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Landroid/app/AppOomManager;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Landroid/app/AppOomManager;->mService:Lcom/android/internal/app/IAppOomService;

    .line 102
    return-void
.end method


# virtual methods
.method public setOomAdj(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "adj"    # I

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOomManager;->mService:Lcom/android/internal/app/IAppOomService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOomService;->setOomAdj(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
