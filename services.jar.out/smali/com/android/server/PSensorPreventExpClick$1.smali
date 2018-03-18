.class Lcom/android/server/PSensorPreventExpClick$1;
.super Ljava/lang/Object;
.source "PSensorPreventExpClick.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PSensorPreventExpClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PSensorPreventExpClick;


# direct methods
.method constructor <init>(Lcom/android/server/PSensorPreventExpClick;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PSensorPreventExpClick;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/PSensorPreventExpClick$1;->this$0:Lcom/android/server/PSensorPreventExpClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 76
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v1

    .line 68
    .local v0, "distance":F
    const-string/jumbo v2, "PSensorPreventExpClick"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "distance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string/jumbo v2, "PSensorPreventExpClick"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mProximityThreshold:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PSensorPreventExpClick$1;->this$0:Lcom/android/server/PSensorPreventExpClick;

    invoke-static {v4}, Lcom/android/server/PSensorPreventExpClick;->-get2(Lcom/android/server/PSensorPreventExpClick;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v2, p0, Lcom/android/server/PSensorPreventExpClick$1;->this$0:Lcom/android/server/PSensorPreventExpClick;

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/PSensorPreventExpClick$1;->this$0:Lcom/android/server/PSensorPreventExpClick;

    invoke-static {v3}, Lcom/android/server/PSensorPreventExpClick;->-get2(Lcom/android/server/PSensorPreventExpClick;)F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v1}, Lcom/android/server/PSensorPreventExpClick;->-set0(Lcom/android/server/PSensorPreventExpClick;Z)Z

    .line 71
    const-string/jumbo v1, "PSensorPreventExpClick"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mProximityNear:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PSensorPreventExpClick$1;->this$0:Lcom/android/server/PSensorPreventExpClick;

    invoke-static {v3}, Lcom/android/server/PSensorPreventExpClick;->-get1(Lcom/android/server/PSensorPreventExpClick;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/android/server/PSensorPreventExpClick$1;->this$0:Lcom/android/server/PSensorPreventExpClick;

    invoke-static {v1}, Lcom/android/server/PSensorPreventExpClick;->-get0(Lcom/android/server/PSensorPreventExpClick;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 66
    return-void
.end method
