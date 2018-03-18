.class public final Landroid/os/AlarmStats;
.super Ljava/lang/Object;
.source "AlarmStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/AlarmStats$WakeupEvent;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "    "

.field private static final PREFIX_PACKAGE:Ljava/lang/String; = "      "


# instance fields
.field private mMaxEvent:Landroid/os/AlarmStats$WakeupEvent;

.field private final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/AlarmStats$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordDuration:J

.field private final mRecordStartTime:J

.field private final mRecordStopTime:J

.field private final mSystemWakeups:I

.field private final mTotalWakeups:I

.field private final mWakeupsSummary:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/AlarmStats$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJIILjava/util/LinkedList;)V
    .locals 3
    .param p1, "recordStartTime"    # J
    .param p3, "recordStopTime"    # J
    .param p5, "systemWakeups"    # I
    .param p6, "totalWakeups"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/AlarmStats$WakeupEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p7, "wakeups":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/os/AlarmStats$WakeupEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/AlarmStats;->mWakeupsSummary:Ljava/util/LinkedList;

    .line 32
    iput-wide p1, p0, Landroid/os/AlarmStats;->mRecordStartTime:J

    .line 33
    iput-wide p3, p0, Landroid/os/AlarmStats;->mRecordStopTime:J

    .line 34
    sub-long v0, p3, p1

    iput-wide v0, p0, Landroid/os/AlarmStats;->mRecordDuration:J

    .line 35
    iput p5, p0, Landroid/os/AlarmStats;->mSystemWakeups:I

    .line 36
    iput p6, p0, Landroid/os/AlarmStats;->mTotalWakeups:I

    .line 37
    iput-object p7, p0, Landroid/os/AlarmStats;->mRecentWakeups:Ljava/util/LinkedList;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/AlarmStats;->mMaxEvent:Landroid/os/AlarmStats$WakeupEvent;

    .line 31
    return-void
.end method


# virtual methods
.method public calStats()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 66
    iget-object v8, p0, Landroid/os/AlarmStats;->mRecentWakeups:Ljava/util/LinkedList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/os/AlarmStats;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 67
    :cond_0
    const-string/jumbo v5, "No wakeups found"

    return-object v5

    .line 70
    :cond_1
    iget-object v8, p0, Landroid/os/AlarmStats;->mWakeupsSummary:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->clear()V

    .line 72
    iget-object v8, p0, Landroid/os/AlarmStats;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "event$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AlarmStats$WakeupEvent;

    .line 73
    .local v0, "event":Landroid/os/AlarmStats$WakeupEvent;
    const/4 v2, 0x0

    .line 74
    .local v2, "found":Landroid/os/AlarmStats$WakeupEvent;
    iget-object v8, p0, Landroid/os/AlarmStats;->mWakeupsSummary:Ljava/util/LinkedList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "summary$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/AlarmStats$WakeupEvent;

    .line 75
    .local v3, "summary":Landroid/os/AlarmStats$WakeupEvent;
    iget-object v8, v0, Landroid/os/AlarmStats$WakeupEvent;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v0, Landroid/os/AlarmStats$WakeupEvent;->packageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/os/AlarmStats$WakeupEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 76
    iget-object v8, v0, Landroid/os/AlarmStats$WakeupEvent;->tag:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v0, Landroid/os/AlarmStats$WakeupEvent;->tag:Ljava/lang/String;

    iget-object v9, v3, Landroid/os/AlarmStats$WakeupEvent;->tag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 75
    if-eqz v8, :cond_2

    .line 77
    move-object v2, v3

    .line 81
    .end local v2    # "found":Landroid/os/AlarmStats$WakeupEvent;
    .end local v3    # "summary":Landroid/os/AlarmStats$WakeupEvent;
    :cond_3
    if-eqz v2, :cond_4

    .line 82
    iget v8, v2, Landroid/os/AlarmStats$WakeupEvent;->times:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Landroid/os/AlarmStats$WakeupEvent;->times:I

    goto :goto_0

    .line 84
    :cond_4
    new-instance v2, Landroid/os/AlarmStats$WakeupEvent;

    invoke-direct {v2, v0}, Landroid/os/AlarmStats$WakeupEvent;-><init>(Landroid/os/AlarmStats$WakeupEvent;)V

    .line 85
    .local v2, "found":Landroid/os/AlarmStats$WakeupEvent;
    iget-object v8, p0, Landroid/os/AlarmStats;->mWakeupsSummary:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v0    # "event":Landroid/os/AlarmStats$WakeupEvent;
    .end local v2    # "found":Landroid/os/AlarmStats$WakeupEvent;
    .end local v4    # "summary$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v8, p0, Landroid/os/AlarmStats;->mWakeupsSummary:Ljava/util/LinkedList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "summary$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/AlarmStats$WakeupEvent;

    .line 90
    .restart local v3    # "summary":Landroid/os/AlarmStats$WakeupEvent;
    iget-object v8, p0, Landroid/os/AlarmStats;->mMaxEvent:Landroid/os/AlarmStats$WakeupEvent;

    if-nez v8, :cond_7

    .line 91
    iput-object v3, p0, Landroid/os/AlarmStats;->mMaxEvent:Landroid/os/AlarmStats$WakeupEvent;

    .line 94
    :cond_7
    iget-object v8, p0, Landroid/os/AlarmStats;->mMaxEvent:Landroid/os/AlarmStats$WakeupEvent;

    iget v8, v8, Landroid/os/AlarmStats$WakeupEvent;->times:I

    iget v9, v3, Landroid/os/AlarmStats$WakeupEvent;->times:I

    if-ge v8, v9, :cond_6

    .line 95
    iput-object v3, p0, Landroid/os/AlarmStats;->mMaxEvent:Landroid/os/AlarmStats$WakeupEvent;

    goto :goto_1

    .line 99
    .end local v3    # "summary":Landroid/os/AlarmStats$WakeupEvent;
    :cond_8
    iget-object v8, p0, Landroid/os/AlarmStats;->mMaxEvent:Landroid/os/AlarmStats$WakeupEvent;

    if-nez v8, :cond_9

    .line 100
    const-string/jumbo v5, "Max wakeups package not found"

    return-object v5

    .line 103
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 104
    .local v6, "timeFix":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Alarm during screen off: Top wakeups package is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/os/AlarmStats;->mMaxEvent:Landroid/os/AlarmStats$WakeupEvent;

    iget-object v9, v9, Landroid/os/AlarmStats$WakeupEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 105
    const-string/jumbo v9, ", wakeups:"

    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 105
    iget-object v9, p0, Landroid/os/AlarmStats;->mMaxEvent:Landroid/os/AlarmStats$WakeupEvent;

    iget v9, v9, Landroid/os/AlarmStats$WakeupEvent;->times:I

    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 106
    const-string/jumbo v9, ", tag:"

    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 106
    iget-object v9, p0, Landroid/os/AlarmStats;->mMaxEvent:Landroid/os/AlarmStats$WakeupEvent;

    iget-object v9, v9, Landroid/os/AlarmStats$WakeupEvent;->tag:Ljava/lang/String;

    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 107
    const-string/jumbo v9, ". Total wakeups:"

    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 107
    iget v9, p0, Landroid/os/AlarmStats;->mTotalWakeups:I

    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 108
    const-string/jumbo v9, ", system wakeups:"

    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 108
    iget v9, p0, Landroid/os/AlarmStats;->mSystemWakeups:I

    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 109
    const-string/jumbo v9, ", recorded wakeups:"

    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 109
    iget-object v9, p0, Landroid/os/AlarmStats;->mRecentWakeups:Ljava/util/LinkedList;

    if-eqz v9, :cond_a

    iget-object v5, p0, Landroid/os/AlarmStats;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    .line 104
    :cond_a
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 110
    const-string/jumbo v8, ", recorded types:"

    .line 104
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 110
    iget-object v8, p0, Landroid/os/AlarmStats;->mWakeupsSummary:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    .line 104
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 111
    const-string/jumbo v8, ", mRecordStartTime:"

    .line 104
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 111
    const-string/jumbo v8, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v10, p0, Landroid/os/AlarmStats;->mRecordStartTime:J

    add-long/2addr v10, v6

    invoke-static {v8, v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    .line 104
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 112
    const-string/jumbo v8, ", mRecordStopTime:"

    .line 104
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 112
    const-string/jumbo v8, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v10, p0, Landroid/os/AlarmStats;->mRecordStopTime:J

    add-long/2addr v10, v6

    invoke-static {v8, v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    .line 104
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 113
    const-string/jumbo v8, ", mRecordDuration:"

    .line 104
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 113
    iget-wide v8, p0, Landroid/os/AlarmStats;->mRecordDuration:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 104
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 113
    const-string/jumbo v8, "."

    .line 104
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/16 v10, 0x7c

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 43
    .local v2, "timeFix":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    mRecordStartTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v6, p0, Landroid/os/AlarmStats;->mRecordStartTime:J

    add-long/2addr v6, v2

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    mRecordStopTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v6, p0, Landroid/os/AlarmStats;->mRecordStopTime:J

    add-long/2addr v6, v2

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    mRecordDuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/os/AlarmStats;->mRecordDuration:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    mSystemWakeups: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/os/AlarmStats;->mSystemWakeups:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    mTotalWakeups: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/os/AlarmStats;->mTotalWakeups:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    total recorded wakeups: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Landroid/os/AlarmStats;->mRecentWakeups:Ljava/util/LinkedList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/os/AlarmStats;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    total recorded types: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/AlarmStats;->mWakeupsSummary:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    iget-object v4, p0, Landroid/os/AlarmStats;->mWakeupsSummary:Ljava/util/LinkedList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "summary$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AlarmStats$WakeupEvent;

    .line 51
    .local v0, "summary":Landroid/os/AlarmStats$WakeupEvent;
    const-string/jumbo v4, "      "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    iget v4, v0, Landroid/os/AlarmStats$WakeupEvent;->times:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 53
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 54
    iget-object v4, v0, Landroid/os/AlarmStats$WakeupEvent;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 56
    iget-object v4, v0, Landroid/os/AlarmStats$WakeupEvent;->tag:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 58
    iget v4, v0, Landroid/os/AlarmStats$WakeupEvent;->uid:I

    invoke-static {p1, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 59
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 60
    iget-object v4, v0, Landroid/os/AlarmStats$WakeupEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 48
    .end local v0    # "summary":Landroid/os/AlarmStats$WakeupEvent;
    .end local v1    # "summary$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 41
    .restart local v1    # "summary$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public getMaxWakeups()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/os/AlarmStats;->mMaxEvent:Landroid/os/AlarmStats$WakeupEvent;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/os/AlarmStats;->mMaxEvent:Landroid/os/AlarmStats$WakeupEvent;

    iget v0, v0, Landroid/os/AlarmStats$WakeupEvent;->times:I

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRecordDuration()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Landroid/os/AlarmStats;->mRecordDuration:J

    return-wide v0
.end method

.method public getSystemWakeups()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/os/AlarmStats;->mSystemWakeups:I

    return v0
.end method
