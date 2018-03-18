.class Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsIndoorOptimization"
.end annotation


# instance fields
.field GPS_REMOVE_UNCOMFORTABLE_LISTENER_ACTION:Ljava/lang/String;

.field HIGH_SPEED:F

.field HIGH_SPEED_STOP_INTERVAL:J

.field LOW_SPEED:F

.field LOW_SPEED_STOP_INTERVAL:J

.field MID_SPEED_STOP_INTERVAL:J

.field STATIC_WAIT_LONG_TIME:J

.field STATIC_WAIT_TIME:J

.field fSpeed:F

.field firstNoSvTime:J

.field mlocationTime:J

.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .prologue
    const-wide/16 v2, 0x0

    .line 2679
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2663
    const-string/jumbo v0, "action.android.location.GPS_REMOVE_UNCOMFORTABLE_LISTENER"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->GPS_REMOVE_UNCOMFORTABLE_LISTENER_ACTION:Ljava/lang/String;

    .line 2664
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->STATIC_WAIT_TIME:J

    .line 2665
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->STATIC_WAIT_LONG_TIME:J

    .line 2667
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->LOW_SPEED_STOP_INTERVAL:J

    .line 2668
    const-wide/16 v0, 0x5a

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->MID_SPEED_STOP_INTERVAL:J

    .line 2669
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->HIGH_SPEED_STOP_INTERVAL:J

    .line 2671
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->LOW_SPEED:F

    .line 2672
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->HIGH_SPEED:F

    .line 2681
    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->mlocationTime:J

    .line 2682
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->fSpeed:F

    .line 2683
    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->firstNoSvTime:J

    .line 2679
    return-void
.end method


# virtual methods
.method checkAndSendRemoveRequestBroadCast()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 2728
    const/4 v0, 0x0

    .line 2729
    .local v0, "bSend":Z
    const-wide/16 v6, 0x0

    .line 2730
    .local v6, "mStopInterval":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->firstNoSvTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10

    .line 2731
    .local v2, "diffTimes":J
    const-string/jumbo v5, "GnssLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "diffTimes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    iget-wide v8, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->STATIC_WAIT_TIME:J

    cmp-long v5, v2, v8

    if-lez v5, :cond_0

    .line 2734
    iget-wide v8, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->mlocationTime:J

    cmp-long v5, v8, v12

    if-nez v5, :cond_2

    .line 2737
    const/4 v0, 0x1

    .line 2738
    iget-wide v6, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->STATIC_WAIT_TIME:J

    .line 2769
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2772
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2773
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "StopIntervalTime"

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2774
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->GPS_REMOVE_UNCOMFORTABLE_LISTENER_ACTION:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2775
    .local v4, "mIntent":Landroid/content/Intent;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2776
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v5}, Lcom/android/server/location/GnssLocationProvider;->-get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v5

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2777
    iput-wide v12, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->firstNoSvTime:J

    .line 2726
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "mIntent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 2742
    :cond_2
    iget v5, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->fSpeed:F

    iget v8, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->LOW_SPEED:F

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_4

    .line 2745
    const/4 v0, 0x1

    .line 2746
    iget-wide v6, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->LOW_SPEED_STOP_INTERVAL:J

    .line 2760
    :cond_3
    :goto_1
    iget-wide v8, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->mlocationTime:J

    cmp-long v5, v8, v12

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->mlocationTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->STATIC_WAIT_LONG_TIME:J

    cmp-long v5, v8, v10

    if-lez v5, :cond_0

    .line 2763
    const-string/jumbo v5, "GnssLocationProvider"

    const-string/jumbo v8, "after last location report, it is going too long, so remove it."

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    iput-wide v12, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->mlocationTime:J

    .line 2765
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->fSpeed:F

    goto :goto_0

    .line 2748
    :cond_4
    iget v5, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->fSpeed:F

    iget v8, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->LOW_SPEED:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_5

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->fSpeed:F

    iget v8, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->HIGH_SPEED:F

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_5

    .line 2751
    const/4 v0, 0x1

    .line 2752
    iget-wide v6, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->MID_SPEED_STOP_INTERVAL:J

    goto :goto_1

    .line 2754
    :cond_5
    iget v5, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->fSpeed:F

    iget v8, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->HIGH_SPEED:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_3

    .line 2757
    const/4 v0, 0x1

    .line 2758
    iget-wide v6, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->HIGH_SPEED_STOP_INTERVAL:J

    goto :goto_1
.end method

.method clearData()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2688
    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->mlocationTime:J

    .line 2689
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->fSpeed:F

    .line 2690
    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->firstNoSvTime:J

    .line 2686
    return-void
.end method

.method getFirstNoSvTime()J
    .locals 2

    .prologue
    .line 2719
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->firstNoSvTime:J

    return-wide v0
.end method

.method getSpeed()F
    .locals 1

    .prologue
    .line 2723
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->fSpeed:F

    return v0
.end method

.method setFirstNoSvTime(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 2701
    iput-wide p1, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->firstNoSvTime:J

    .line 2698
    return-void
.end method

.method setLocation()V
    .locals 2

    .prologue
    .line 2696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->mlocationTime:J

    .line 2694
    return-void
.end method

.method setSpeed(F)V
    .locals 2
    .param p1, "mSpeed"    # F

    .prologue
    const/4 v1, 0x0

    .line 2705
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 2708
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->fSpeed:F

    .line 2703
    :goto_0
    return-void

    .line 2712
    :cond_0
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider$GpsIndoorOptimization;->fSpeed:F

    goto :goto_0
.end method
