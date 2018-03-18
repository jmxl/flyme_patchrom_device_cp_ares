.class final Lcom/android/server/AlarmManagerService$WakeupEvent;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WakeupEvent"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public uid:I

.field public when:J


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .locals 1
    .param p1, "theTime"    # J
    .param p3, "theUid"    # I
    .param p4, "theAction"    # Ljava/lang/String;

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    .line 385
    iput p3, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->uid:I

    .line 386
    iput-object p4, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->action:Ljava/lang/String;

    .line 383
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WakeupEvent{when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 392
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    .line 391
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    const-string/jumbo v1, ", uid="

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    iget v1, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->uid:I

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    const-string/jumbo v1, ", action=\'"

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->action:Ljava/lang/String;

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    const/16 v1, 0x27

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 395
    const/16 v1, 0x7d

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
