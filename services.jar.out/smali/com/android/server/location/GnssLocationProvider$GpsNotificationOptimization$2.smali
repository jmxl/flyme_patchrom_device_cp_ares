.class Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$2;
.super Ljava/util/TimerTask;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->startmTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    .prologue
    .line 2841
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$2;->this$1:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2846
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2847
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2848
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$2;->this$1:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    iget-object v1, v1, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mGpsNotificationhandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2844
    return-void
.end method
