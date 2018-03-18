.class Lcom/android/server/fingerprint/FingerprintService$6;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1348
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 1340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1341
    .local v2, "time":J
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v1

    .line 1342
    .local v0, "distance":F
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v5}, Lcom/android/server/fingerprint/FingerprintService;->-get13(Lcom/android/server/fingerprint/FingerprintService;)F

    move-result v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v4, v1}, Lcom/android/server/fingerprint/FingerprintService;->-set4(Lcom/android/server/fingerprint/FingerprintService;Z)Z

    .line 1343
    const-string/jumbo v1, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mProximityNear="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v5}, Lcom/android/server/fingerprint/FingerprintService;->-get12(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get0(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 1339
    return-void
.end method
