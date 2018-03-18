.class final Landroid/content/res/theme/ZsWeatherUtils$1;
.super Ljava/lang/Object;
.source "ZsWeatherUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/theme/ZsWeatherUtils;->getWeatherFromURI(Landroid/content/Context;)Landroid/content/res/theme/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resolver:Landroid/content/ContentResolver;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "val$resolver"    # Landroid/content/ContentResolver;
    .param p2, "val$uri"    # Landroid/net/Uri;

    .prologue
    .line 65
    iput-object p1, p0, Landroid/content/res/theme/ZsWeatherUtils$1;->val$resolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Landroid/content/res/theme/ZsWeatherUtils$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 69
    :try_start_0
    iget-object v0, p0, Landroid/content/res/theme/ZsWeatherUtils$1;->val$resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/res/theme/ZsWeatherUtils$1;->val$uri:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "weaCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "curTemp"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "city"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/theme/ZsWeatherUtils;->-set0(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 70
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get0()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get0()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get0()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get0()Landroid/database/Cursor;

    move-result-object v1

    const-string/jumbo v2, "weaCode"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, "weaCode":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get0()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get0()Landroid/database/Cursor;

    move-result-object v1

    const-string/jumbo v2, "curTemp"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "curTemp":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get0()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get0()Landroid/database/Cursor;

    move-result-object v1

    const-string/jumbo v2, "city"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "city":Ljava/lang/String;
    const-string/jumbo v0, "ZsWeatherUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWeatherFromURI-->Code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",curTemp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",city:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/theme/ZsWeatherUtils;->-set1(Landroid/content/res/theme/Weather;)Landroid/content/res/theme/Weather;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 86
    .end local v6    # "city":Ljava/lang/String;
    .end local v7    # "curTemp":Ljava/lang/String;
    .end local v9    # "weaCode":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get0()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get0()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 88
    invoke-static {v10}, Landroid/content/res/theme/ZsWeatherUtils;->-set0(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 90
    :cond_1
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get1()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_1
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit v1

    .line 67
    return-void

    .line 79
    .restart local v6    # "city":Ljava/lang/String;
    .restart local v7    # "curTemp":Ljava/lang/String;
    .restart local v9    # "weaCode":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v0, Landroid/content/res/theme/Weather;

    invoke-direct {v0, v9, v7, v6}, Landroid/content/res/theme/Weather;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/res/theme/ZsWeatherUtils;->-set1(Landroid/content/res/theme/Weather;)Landroid/content/res/theme/Weather;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 83
    .end local v6    # "city":Ljava/lang/String;
    .end local v7    # "curTemp":Ljava/lang/String;
    .end local v9    # "weaCode":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 84
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v0, "ZsWeatherUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWeatherFromURI failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 86
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get0()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 87
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get0()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 88
    invoke-static {v10}, Landroid/content/res/theme/ZsWeatherUtils;->-set0(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 90
    :cond_3
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get1()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_4
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 85
    :catchall_2
    move-exception v0

    .line 86
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get0()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 87
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get0()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 88
    invoke-static {v10}, Landroid/content/res/theme/ZsWeatherUtils;->-set0(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 90
    :cond_4
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get1()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_5
    invoke-static {}, Landroid/content/res/theme/ZsWeatherUtils;->-get1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v1

    .line 85
    throw v0

    .line 90
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method
