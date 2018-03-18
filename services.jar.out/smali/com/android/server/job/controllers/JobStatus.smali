.class public final Lcom/android/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# static fields
.field static final CONSTRAINTS_OF_INTEREST:I = 0x2bb

.field static final CONSTRAINT_APP_NOT_IDLE:I = 0x40

.field static final CONSTRAINT_CHARGING:I = 0x1

.field static final CONSTRAINT_CONNECTIVITY:I = 0x20

.field static final CONSTRAINT_CONTENT_TRIGGER:I = 0x80

.field static final CONSTRAINT_DEADLINE:I = 0x4

.field static final CONSTRAINT_DEVICE_NOT_DOZING:I = 0x100

.field static final CONSTRAINT_IDLE:I = 0x8

.field static final CONSTRAINT_NOT_ROAMING:I = 0x200

.field static final CONSTRAINT_TIMING_DELAY:I = 0x2

.field static final CONSTRAINT_UNMETERED:I = 0x10

.field public static final DEFAULT_TRIGGER_MAX_DELAY:J = 0x1d4c0L

.field public static final DEFAULT_TRIGGER_UPDATE_DELAY:J = 0x2710L

.field public static final MIN_TRIGGER_MAX_DELAY:J = 0x3e8L

.field public static final MIN_TRIGGER_UPDATE_DELAY:J = 0x1f4L

.field public static final NO_EARLIEST_RUNTIME:J = 0x0L

.field public static final NO_LATEST_RUNTIME:J = 0x7fffffffffffffffL

.field public static final OVERRIDE_FULL:I = 0x2

.field public static final OVERRIDE_SOFT:I = 0x1

.field static final SOFT_OVERRIDE_CONSTRAINTS:I = 0xb

.field public static final STATE_FROZEN:I = 0x1

.field public static final STATE_UNFROZEN:I


# instance fields
.field final batteryName:Ljava/lang/String;

.field final callingUid:I

.field public changedAuthorities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public changedUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

.field public dozeWhitelisted:Z

.field private final earliestRunTimeElapsedMillis:J

.field public freezeState:I

.field final job:Landroid/app/job/JobInfo;

.field public lastEvaluatedPriority:I

.field private final latestRunTimeElapsedMillis:J

.field private final numFailures:I

.field public overrideState:I

.field final requiredConstraints:I

.field satisfiedConstraints:I

.field final sourcePackageName:Ljava/lang/String;

.field final sourceTag:Ljava/lang/String;

.field final sourceUid:I

.field final sourceUserId:I

.field final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;IJJ)V
    .locals 9
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "callingUid"    # I
    .param p3, "sourcePackageName"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "numFailures"    # I
    .param p7, "earliestRunTimeElapsedMillis"    # J
    .param p9, "latestRunTimeElapsedMillis"    # J

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->freezeState:I

    .line 113
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 125
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 141
    iput-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 142
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 144
    const/4 v4, -0x1

    .line 145
    .local v4, "tempSourceUid":I
    const/4 v5, -0x1

    if-eq p4, v5, :cond_0

    if-eqz p3, :cond_0

    .line 147
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, p3, v6, p4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 153
    :cond_0
    :goto_0
    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    .line 154
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 155
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 156
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 157
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 165
    :goto_1
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 165
    :goto_2
    iput-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "*job*/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    .line 170
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 171
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 172
    iput p6, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    .line 174
    const/4 v3, 0x0

    .line 175
    .local v3, "requiredConstraints":I
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 176
    const/16 v3, 0x20

    .line 178
    :cond_1
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 179
    or-int/lit8 v3, v3, 0x10

    .line 181
    :cond_2
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 182
    or-int/lit16 v3, v3, 0x200

    .line 184
    :cond_3
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 185
    or-int/lit8 v3, v3, 0x1

    .line 187
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v5, p7, v6

    if-eqz v5, :cond_5

    .line 188
    or-int/lit8 v3, v3, 0x2

    .line 190
    :cond_5
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v5, p9, v6

    if-eqz v5, :cond_6

    .line 191
    or-int/lit8 v3, v3, 0x4

    .line 193
    :cond_6
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 194
    or-int/lit8 v3, v3, 0x8

    .line 196
    :cond_7
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 197
    or-int/lit16 v3, v3, 0x80

    .line 199
    :cond_8
    iput v3, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    .line 140
    return-void

    .line 159
    .end local v3    # "requiredConstraints":I
    :cond_9
    iput v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 160
    iput p4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 161
    iput-object p3, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 162
    iput-object p5, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 167
    :cond_a
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 149
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;JJ)V
    .locals 12
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "callingUid"    # I
    .param p3, "sourcePackageName"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "sourceTag"    # Ljava/lang/String;
    .param p6, "earliestRunTimeElapsedMillis"    # J
    .param p8, "latestRunTimeElapsedMillis"    # J

    .prologue
    .line 219
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;IJJ)V

    .line 218
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 12
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    .line 205
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    .line 206
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v7

    .line 207
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v10

    move-object v1, p0

    .line 204
    invoke-direct/range {v1 .. v11}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;IJJ)V

    .line 203
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJI)V
    .locals 12
    .param p1, "rescheduling"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "newEarliestRuntimeElapsedMillis"    # J
    .param p4, "newLatestRuntimeElapsedMillis"    # J
    .param p6, "backoffAttempt"    # I

    .prologue
    .line 226
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    .line 227
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    .line 228
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move/from16 v7, p6

    move-wide v8, p2

    move-wide/from16 v10, p4

    .line 226
    invoke-direct/range {v1 .. v11}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;IJJ)V

    .line 225
    return-void
.end method

.method public static createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;
    .locals 14
    .param p0, "job"    # Landroid/app/job/JobInfo;
    .param p1, "callingUid"    # I
    .param p2, "sourcePackageName"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 243
    .local v12, "elapsedNow":J
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v0

    add-long v10, v12, v0

    .line 245
    .local v10, "latestRunTimeElapsedMillis":J
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v0

    sub-long v8, v10, v0

    .line 252
    .local v8, "earliestRunTimeElapsedMillis":J
    :goto_0
    new-instance v1, Lcom/android/server/job/controllers/JobStatus;

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v11}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;IJJ)V

    return-object v1

    .line 247
    .end local v8    # "earliestRunTimeElapsedMillis":J
    .end local v10    # "latestRunTimeElapsedMillis":J
    :cond_0
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v0

    add-long v8, v12, v0

    .line 249
    .restart local v8    # "earliestRunTimeElapsedMillis":J
    :goto_1
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v0

    add-long v10, v12, v0

    .restart local v10    # "latestRunTimeElapsedMillis":J
    goto :goto_0

    .line 248
    .end local v8    # "earliestRunTimeElapsedMillis":J
    .end local v10    # "latestRunTimeElapsedMillis":J
    :cond_1
    const-wide/16 v8, 0x0

    .restart local v8    # "earliestRunTimeElapsedMillis":J
    goto :goto_1

    .line 250
    :cond_2
    const-wide v10, 0x7fffffffffffffffL

    .restart local v10    # "latestRunTimeElapsedMillis":J
    goto :goto_0
.end method

.method private formatRunTime(JJ)Ljava/lang/String;
    .locals 9
    .param p1, "runtime"    # J
    .param p3, "defaultValue"    # J

    .prologue
    .line 519
    cmp-long v4, p1, p3

    if-nez v4, :cond_0

    .line 520
    const-string/jumbo v4, "none"

    return-object v4

    .line 522
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 523
    .local v0, "elapsedNow":J
    sub-long v2, p1, v0

    .line 524
    .local v2, "nextRuntime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 525
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 527
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, -0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "full"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 595
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 596
    const-string/jumbo v2, " tag="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    const-string/jumbo v2, "Source: uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 599
    const-string/jumbo v2, " user="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 600
    const-string/jumbo v2, " pkg="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    if-eqz p3, :cond_b

    .line 602
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "JobInfo:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    const-string/jumbo v2, "  Service: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  PERIODIC: interval="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 606
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 607
    const-string/jumbo v2, " flex="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 608
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 610
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 611
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  PERSISTED"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v2

    if-eqz v2, :cond_2

    .line 614
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Priority: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 616
    :cond_2
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v2

    if-eqz v2, :cond_3

    .line 617
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Flags: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Requires: charging="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v2, " deviceIdle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 623
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 624
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Trigger content URIs:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 626
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v2

    aget-object v1, v2, v0

    .line 627
    .local v1, "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v1}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v1}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    .end local v1    # "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    :cond_4
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 632
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Trigger update delay: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 634
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 636
    :cond_5
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    .line 637
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Trigger max delay: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 639
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 642
    .end local v0    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v2

    if-eqz v2, :cond_7

    .line 643
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Network type: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 645
    :cond_7
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 646
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Minimum latency: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 648
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 650
    :cond_8
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 651
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Max execution delay: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 653
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 655
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Backoff: policy="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 656
    const-string/jumbo v2, " initial="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 657
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 658
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 659
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Has early constraint"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    :cond_a
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 662
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Has late constraint"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Required constraints:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 666
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 667
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 668
    if-eqz p3, :cond_c

    .line 669
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Satisfied constraints:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 671
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 672
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Unsatisfied constraints:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 673
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v3, v3

    and-int/2addr v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 674
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 675
    iget-boolean v2, p0, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    if-eqz v2, :cond_c

    .line 676
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Doze whitelisted: true"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    :cond_c
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v2, :cond_e

    .line 680
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Changed authorities:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 682
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 684
    :cond_d
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v2, :cond_e

    .line 685
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Changed URIs:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 687
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 691
    .end local v0    # "i":I
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Earliest run time: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Latest run time: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 694
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v2, :cond_f

    .line 696
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Num failures: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 700
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Appfreeze status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->freezeState:I

    if-nez v2, :cond_10

    const-string/jumbo v2, "unfrozen"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    return-void

    .line 700
    :cond_10
    const-string/jumbo v2, "frozen"

    goto :goto_3
.end method

.method dumpConstraints(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "constraints"    # I

    .prologue
    .line 561
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 562
    const-string/jumbo v0, " CHARGING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 564
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 565
    const-string/jumbo v0, " TIMING_DELAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 567
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 568
    const-string/jumbo v0, " DEADLINE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    .line 571
    const-string/jumbo v0, " IDLE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    :cond_3
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_4

    .line 574
    const-string/jumbo v0, " CONNECTIVITY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    :cond_4
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_5

    .line 577
    const-string/jumbo v0, " UNMETERED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 579
    :cond_5
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_6

    .line 580
    const-string/jumbo v0, " NOT_ROAMING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    :cond_6
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_7

    .line 583
    const-string/jumbo v0, " APP_NOT_IDLE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 585
    :cond_7
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_8

    .line 586
    const-string/jumbo v0, " CONTENT_TRIGGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    :cond_8
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_9

    .line 589
    const-string/jumbo v0, " DEVICE_NOT_DOZING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 560
    :cond_9
    return-void
.end method

.method public getBatteryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    return-object v0
.end method

.method public getEarliestRunTime()J
    .locals 2

    .prologue
    .line 375
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    return v0
.end method

.method public getJob()Landroid/app/job/JobInfo;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    return v0
.end method

.method public getLatestRunTimeElapsed()J
    .locals 2

    .prologue
    .line 379
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getNumFailures()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v0

    return v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getServiceToken()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return v0
.end method

.method public getSourcePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUid()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    return v0
.end method

.method public getSourceUserId()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerContentMaxDelay()J
    .locals 4

    .prologue
    .line 363
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v0

    .line 364
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 365
    const-wide/32 v2, 0x1d4c0

    return-wide v2

    .line 367
    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getTriggerContentUpdateDelay()J
    .locals 4

    .prologue
    .line 355
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v0

    .line 356
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 357
    const-wide/16 v2, 0x2710

    return-wide v2

    .line 359
    :cond_0
    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public hasChargingConstraint()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 335
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasConnectivityConstraint()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 323
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasContentTriggerConstraint()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 351
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasDeadlineConstraint()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 343
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasIdleConstraint()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 347
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasNotRoamingConstraint()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 331
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTimingDelayConstraint()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 339
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasUnmeteredConstraint()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 327
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isConstraintSatisfied(I)Z
    .locals 2
    .param p1, "constraint"    # I

    .prologue
    const/4 v0, 0x0

    .line 433
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isConstraintsSatisfied()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 479
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 481
    return v2

    .line 484
    :cond_0
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit16 v0, v3, 0x2bb

    .line 486
    .local v0, "req":I
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/lit16 v1, v3, 0x2bb

    .line 487
    .local v1, "sat":I
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    if-ne v3, v2, :cond_1

    .line 489
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v3, v3, 0xb

    or-int/2addr v1, v3

    .line 492
    :cond_1
    and-int v3, v1, v0

    if-ne v3, v0, :cond_2

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isPersisted()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 453
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->freezeState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 454
    return v3

    .line 458
    :cond_0
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 460
    .local v0, "deadlineSatisfied":Z
    :goto_0
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    .line 461
    .local v2, "notIdle":Z
    :goto_1
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/lit16 v4, v4, 0x100

    if-nez v4, :cond_5

    .line 462
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    const/4 v1, 0x1

    .line 463
    .local v1, "notDozing":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_7

    :cond_1
    if-eqz v2, :cond_7

    .end local v1    # "notDozing":Z
    :goto_3
    return v1

    .line 459
    .end local v0    # "deadlineSatisfied":Z
    .end local v2    # "notIdle":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "deadlineSatisfied":Z
    goto :goto_0

    .line 458
    .end local v0    # "deadlineSatisfied":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "deadlineSatisfied":Z
    goto :goto_0

    .line 460
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "notIdle":Z
    goto :goto_1

    .line 461
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "notDozing":Z
    goto :goto_2

    .line 462
    .end local v1    # "notDozing":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "notDozing":Z
    goto :goto_2

    :cond_7
    move v1, v3

    .line 463
    goto :goto_3
.end method

.method public matches(II)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .prologue
    const/4 v0, 0x0

    .line 496
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public printUniqueId(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 265
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 266
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 264
    return-void
.end method

.method setAppNotIdleConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 411
    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setChargingConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 383
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setConnectivityConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 399
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setConstraintSatisfied(IZ)Z
    .locals 5
    .param p1, "constraint"    # I
    .param p2, "state"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 424
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    move v0, v2

    .line 425
    .local v0, "old":Z
    :goto_0
    if-ne v0, p2, :cond_1

    .line 426
    return v1

    .end local v0    # "old":Z
    :cond_0
    move v0, v1

    .line 424
    goto :goto_0

    .line 428
    .restart local v0    # "old":Z
    :cond_1
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v4, p1

    and-int/2addr v3, v4

    if-eqz p2, :cond_2

    .end local p1    # "constraint":I
    :goto_1
    or-int v1, v3, p1

    iput v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 429
    return v2

    .restart local p1    # "constraint":I
    :cond_2
    move p1, v1

    .line 428
    goto :goto_1
.end method

.method setContentTriggerConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 415
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setDeadlineConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 391
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setDeviceNotDozingConstraintSatisfied(ZZ)Z
    .locals 1
    .param p1, "state"    # Z
    .param p2, "whitelisted"    # Z

    .prologue
    .line 419
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    .line 420
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setIdleConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 395
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setNotRoamingConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 407
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setTimingDelayConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 387
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setUnmeteredConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 403
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method public shouldDump(I)Z
    .locals 2
    .param p1, "filterUid"    # I

    .prologue
    const/4 v0, 0x1

    .line 437
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 541
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 544
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortStringExceptUniqueId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 502
    const-string/jumbo v3, ":["

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 502
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    const-string/jumbo v3, ",jId="

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 504
    const-string/jumbo v3, ",u"

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 504
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v3

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 505
    const-string/jumbo v3, ",suid="

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 505
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 506
    const-string/jumbo v3, ",R=("

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 506
    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v6, 0x0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(JJ)Ljava/lang/String;

    move-result-object v3

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 507
    const-string/jumbo v3, ","

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 507
    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v6, 0x7fffffffffffffffL

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(JJ)Ljava/lang/String;

    move-result-object v3

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 507
    const-string/jumbo v3, ")"

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 508
    const-string/jumbo v3, ",N="

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 508
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v3

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 508
    const-string/jumbo v3, ",C="

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 508
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v3

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 509
    const-string/jumbo v3, ",I="

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 509
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v3

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 510
    const-string/jumbo v3, ",U="

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 510
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 501
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 511
    const-string/jumbo v3, ",F="

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 511
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 511
    const-string/jumbo v3, ",P="

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 511
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v3

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 512
    const-string/jumbo v3, ",ANI="

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 512
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    move v0, v1

    .line 501
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 513
    const-string/jumbo v3, ",DND="

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 513
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_2

    .line 501
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 514
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "(READY)"

    .line 501
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 515
    const-string/jumbo v1, "]"

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 510
    goto :goto_0

    :cond_1
    move v0, v2

    .line 512
    goto :goto_1

    :cond_2
    move v1, v2

    .line 513
    goto :goto_2

    .line 514
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3
.end method
