.class public Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
.super Ljava/lang/Object;
.source "LocationRequestStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationRequestStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageStatistics"
.end annotation


# instance fields
.field private mFastestIntervalMs:J

.field private final mInitialElapsedTimeMs:J

.field private final mInitialUpTimeMs:J

.field private mLastActivitationElapsedTimeMs:J

.field private mLastActivitationUpTimeMs:J

.field private mNumActiveRequests:I

.field private mNumRequests:I

.field private mSlowestIntervalMs:J

.field private mTotalDurationMs:J

.field private mTotalUpTimeMs:J


# direct methods
.method static synthetic -wrap0(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;J)V
    .locals 1
    .param p1, "intervalMs"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->startRequesting(J)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->stopRequesting()V

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mInitialElapsedTimeMs:J

    .line 117
    iput v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    .line 118
    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    .line 119
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    .line 120
    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mInitialUpTimeMs:J

    .line 122
    iput v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumRequests:I

    .line 123
    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalUpTimeMs:J

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;-><init>()V

    return-void
.end method

.method private startRequesting(J)V
    .locals 3
    .param p1, "intervalMs"    # J

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationUpTimeMs:J

    .line 132
    :cond_0
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 133
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    .line 136
    :cond_1
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 137
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    .line 140
    :cond_2
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    .line 141
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumRequests:I

    .line 126
    return-void
.end method

.method private stopRequesting()V
    .locals 8

    .prologue
    .line 145
    iget v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-gtz v2, :cond_0

    .line 147
    const-string/jumbo v2, "LocationStats"

    const-string/jumbo v3, "Reference counting corrupted in usage statistics."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 151
    :cond_0
    iget v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    .line 152
    iget v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-nez v2, :cond_1

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    sub-long v0, v2, v4

    .line 155
    .local v0, "lastDurationMs":J
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    .line 156
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalUpTimeMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationUpTimeMs:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalUpTimeMs:J

    .line 144
    .end local v0    # "lastDurationMs":J
    :cond_1
    return-void
.end method


# virtual methods
.method public getDurationMs()J
    .locals 6

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    .line 165
    .local v0, "currentDurationMs":J
    iget v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-lez v2, :cond_0

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    sub-long/2addr v2, v4

    .line 166
    add-long/2addr v0, v2

    .line 169
    :cond_0
    return-wide v0
.end method

.method public getFastestIntervalMs()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    return-wide v0
.end method

.method public getNumRequests()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumRequests:I

    return v0
.end method

.method public getSlowestIntervalMs()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    return-wide v0
.end method

.method public getTimeSinceFirstRequestMs()J
    .locals 4

    .prologue
    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mInitialElapsedTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getUpTimeMs()J
    .locals 6

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalUpTimeMs:J

    .line 235
    .local v0, "currentUpTimeMs":J
    iget v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-lez v2, :cond_0

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationUpTimeMs:J

    sub-long/2addr v2, v4

    .line 236
    add-long/2addr v0, v2

    .line 239
    :cond_0
    return-wide v0
.end method

.method public getUpTimeSinceFirstRequestMs()J
    .locals 4

    .prologue
    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mInitialUpTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 197
    iget v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3c

    const-wide/16 v6, 0x3e8

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "NumRequests "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumRequests:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string/jumbo v1, ": uptime requested "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getUpTimeMs()J

    move-result-wide v2

    div-long/2addr v2, v6

    div-long/2addr v2, v8

    .line 204
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    const-string/jumbo v2, " out of the last "

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getUpTimeSinceFirstRequestMs()J

    move-result-wide v2

    div-long/2addr v2, v6

    div-long/2addr v2, v8

    .line 204
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    const-string/jumbo v2, " minutes: "

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 210
    const-string/jumbo v1, "Interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :goto_0
    const-string/jumbo v1, ": Duration requested "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getDurationMs()J

    move-result-wide v2

    div-long/2addr v2, v6

    div-long/2addr v2, v8

    .line 215
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    const-string/jumbo v2, " out of the last "

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getTimeSinceFirstRequestMs()J

    move-result-wide v2

    div-long/2addr v2, v6

    div-long/2addr v2, v8

    .line 215
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    const-string/jumbo v2, " minutes"

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string/jumbo v1, ": Currently active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 212
    :cond_1
    const-string/jumbo v1, "Min interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string/jumbo v1, ": Max interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
