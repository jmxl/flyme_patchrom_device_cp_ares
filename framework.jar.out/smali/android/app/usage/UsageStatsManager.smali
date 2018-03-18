.class public final Landroid/app/usage/UsageStatsManager;
.super Ljava/lang/Object;
.source "UsageStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageStatsManager$ListenerTransport;
    }
.end annotation


# static fields
.field public static final INTERVAL_BEST:I = 0x4

.field public static final INTERVAL_COUNT:I = 0x4

.field public static final INTERVAL_DAILY:I = 0x0

.field public static final INTERVAL_MONTHLY:I = 0x2

.field public static final INTERVAL_WEEKLY:I = 0x1

.field public static final INTERVAL_YEARLY:I = 0x3

.field private static final sEmptyResults:Landroid/app/usage/UsageEvents;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/usage/YulongAppStatusListener;",
            "Landroid/app/usage/UsageStatsManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/app/usage/IUsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Landroid/app/usage/UsageEvents;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents;-><init>()V

    sput-object v0, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/usage/IUsageStatsManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/usage/IUsageStatsManager;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    iput-object v0, p0, Landroid/app/usage/UsageStatsManager;->mListeners:Ljava/util/HashMap;

    .line 107
    iput-object p1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    .line 106
    return-void
.end method

.method private getWrapedListener(Landroid/app/usage/YulongAppStatusListener;)Landroid/app/usage/UsageStatsManager$ListenerTransport;
    .locals 3
    .param p1, "listener"    # Landroid/app/usage/YulongAppStatusListener;

    .prologue
    const/4 v1, 0x0

    .line 324
    if-nez p1, :cond_0

    return-object v1

    .line 325
    :cond_0
    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 326
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager$ListenerTransport;

    .line 327
    .local v0, "transport":Landroid/app/usage/UsageStatsManager$ListenerTransport;
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 328
    return-object v0

    .line 325
    .end local v0    # "transport":Landroid/app/usage/UsageStatsManager$ListenerTransport;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private wrapListener(Landroid/app/usage/YulongAppStatusListener;)Landroid/app/usage/UsageStatsManager$ListenerTransport;
    .locals 3
    .param p1, "listener"    # Landroid/app/usage/YulongAppStatusListener;

    .prologue
    const/4 v1, 0x0

    .line 312
    if-nez p1, :cond_0

    return-object v1

    .line 313
    :cond_0
    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 314
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager$ListenerTransport;

    .line 315
    .local v0, "transport":Landroid/app/usage/UsageStatsManager$ListenerTransport;
    if-nez v0, :cond_1

    .line 316
    new-instance v0, Landroid/app/usage/UsageStatsManager$ListenerTransport;

    .end local v0    # "transport":Landroid/app/usage/UsageStatsManager$ListenerTransport;
    invoke-direct {v0, p0, p1}, Landroid/app/usage/UsageStatsManager$ListenerTransport;-><init>(Landroid/app/usage/UsageStatsManager;Landroid/app/usage/YulongAppStatusListener;)V

    .line 318
    .restart local v0    # "transport":Landroid/app/usage/UsageStatsManager$ListenerTransport;
    :cond_1
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 319
    return-object v0

    .line 313
    .end local v0    # "transport":Landroid/app/usage/UsageStatsManager$ListenerTransport;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addAppStatusListener(Landroid/app/usage/YulongAppStatusListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/usage/YulongAppStatusListener;

    .prologue
    .line 337
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/usage/UsageStatsManager;->wrapListener(Landroid/app/usage/YulongAppStatusListener;)Landroid/app/usage/UsageStatsManager$ListenerTransport;

    move-result-object v1

    .line 338
    .local v1, "transport":Landroid/app/usage/UsageStatsManager$ListenerTransport;
    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v2, v1}, Landroid/app/usage/IUsageStatsManager;->addAppStatusListener(Landroid/app/usage/IYulongAppStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v1    # "transport":Landroid/app/usage/UsageStatsManager$ListenerTransport;
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearAppStatusListeners()V
    .locals 2

    .prologue
    .line 361
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v1}, Landroid/app/usage/IUsageStatsManager;->clearAppStatusListeners()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isAppInactive(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 242
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public onCarrierPrivilegedAppsChanged()V
    .locals 2

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v1}, Landroid/app/usage/IUsageStatsManager;->onCarrierPrivilegedAppsChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public queryAndAggregateUsageStats(JJ)Ljava/util/Map;
    .locals 13
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    const/4 v1, 0x4

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v11

    .line 214
    .local v11, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 218
    :cond_0
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 219
    .local v6, "aggregatedStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 220
    .local v10, "statCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_2

    .line 221
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    .line 222
    .local v9, "newStat":Landroid/app/usage/UsageStats;
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStats;

    .line 223
    .local v7, "existingStat":Landroid/app/usage/UsageStats;
    if-nez v7, :cond_1

    .line 224
    iget-object v0, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v7, v9}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V

    goto :goto_1

    .line 229
    .end local v7    # "existingStat":Landroid/app/usage/UsageStats;
    .end local v9    # "newStat":Landroid/app/usage/UsageStats;
    :cond_2
    return-object v6
.end method

.method public queryConfigurations(IJJ)Ljava/util/List;
    .locals 10
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    .line 168
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 167
    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    .line 169
    .local v8, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    if-eqz v8, :cond_0

    .line 170
    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 172
    .end local v8    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/ConfigurationStats;>;"
    :catch_0
    move-exception v7

    .line 175
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryEvents(JJ)Landroid/app/usage/UsageEvents;
    .locals 9
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    .line 192
    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-wide v2, p1

    move-wide v4, p3

    .line 191
    invoke-interface/range {v1 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 193
    .local v7, "iter":Landroid/app/usage/UsageEvents;
    if-eqz v7, :cond_0

    .line 194
    return-object v7

    .line 196
    .end local v7    # "iter":Landroid/app/usage/UsageEvents;
    :catch_0
    move-exception v0

    .line 199
    :cond_0
    sget-object v1, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-object v1
.end method

.method public queryUsageStats(IJJ)Ljava/util/List;
    .locals 10
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    .line 143
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 142
    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    .line 144
    .local v8, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/UsageStats;>;"
    if-eqz v8, :cond_0

    .line 145
    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 147
    .end local v8    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/usage/UsageStats;>;"
    :catch_0
    move-exception v7

    .line 150
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAppStatusListener(Landroid/app/usage/YulongAppStatusListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/usage/YulongAppStatusListener;

    .prologue
    .line 349
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/usage/UsageStatsManager;->getWrapedListener(Landroid/app/usage/YulongAppStatusListener;)Landroid/app/usage/UsageStatsManager$ListenerTransport;

    move-result-object v1

    .line 350
    .local v1, "transport":Landroid/app/usage/UsageStatsManager$ListenerTransport;
    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v2, v1}, Landroid/app/usage/IUsageStatsManager;->removeAppStatusListener(Landroid/app/usage/IYulongAppStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v1    # "transport":Landroid/app/usage/UsageStatsManager$ListenerTransport;
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setAppInactive(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "inactive"    # Z

    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setForegroundAppChangeListener(Landroid/app/usage/IForegroundAppChangeCallback;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/usage/IForegroundAppChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0, p1}, Landroid/app/usage/IUsageStatsManager;->setForegroundAppChangeListener(Landroid/app/usage/IForegroundAppChangeCallback;)V

    .line 294
    return-void
.end method

.method public whitelistAppTemporarily(Ljava/lang/String;JLandroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 275
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/usage/IUsageStatsManager;->whitelistAppTemporarily(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method
