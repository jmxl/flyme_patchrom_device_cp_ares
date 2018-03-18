.class public Lcom/zeusis/appsnapshot/util/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenScrollShoot"

.field public static mode_for_release:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zeusis/appsnapshot/util/L;->mode_for_release:Z

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # I

    .prologue
    .line 80
    sget-boolean v1, Lcom/zeusis/appsnapshot/util/L;->mode_for_release:Z

    if-nez v1, :cond_0

    .line 81
    const-string/jumbo v1, "[%s][%s]%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "des":Ljava/lang/String;
    const-string/jumbo v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 95
    sget-boolean v1, Lcom/zeusis/appsnapshot/util/L;->mode_for_release:Z

    if-nez v1, :cond_0

    .line 96
    const-string/jumbo v1, "[%s][%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "des":Ljava/lang/String;
    const-string/jumbo v1, "ScreenScrollShoot"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-boolean v1, Lcom/zeusis/appsnapshot/util/L;->mode_for_release:Z

    if-nez v1, :cond_0

    .line 74
    const-string/jumbo v1, "[%s][%s]%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "des":Ljava/lang/String;
    const-string/jumbo v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Z

    .prologue
    .line 87
    sget-boolean v1, Lcom/zeusis/appsnapshot/util/L;->mode_for_release:Z

    if-nez v1, :cond_0

    .line 88
    const-string/jumbo v2, "[%s][%s]%d"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    if-eqz p2, :cond_1

    const-string/jumbo v1, "true"

    :goto_0
    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "des":Ljava/lang/String;
    const-string/jumbo v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void

    .line 89
    :cond_1
    const-string/jumbo v1, "false"

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string/jumbo v0, ""

    invoke-static {p0, v0, p1}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # I

    .prologue
    .line 54
    sget-boolean v1, Lcom/zeusis/appsnapshot/util/L;->mode_for_release:Z

    if-nez v1, :cond_0

    .line 55
    const-string/jumbo v1, "[%s][%s]%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "des":Ljava/lang/String;
    const-string/jumbo v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-boolean v1, Lcom/zeusis/appsnapshot/util/L;->mode_for_release:Z

    if-nez v1, :cond_0

    .line 48
    const-string/jumbo v1, "[%s][%s]%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "des":Ljava/lang/String;
    const-string/jumbo v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Z

    .prologue
    .line 65
    sget-boolean v1, Lcom/zeusis/appsnapshot/util/L;->mode_for_release:Z

    if-nez v1, :cond_0

    .line 66
    const-string/jumbo v2, "[%s][%s]%s"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    if-eqz p2, :cond_1

    const-string/jumbo v1, "true"

    :goto_0
    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "des":Ljava/lang/String;
    const-string/jumbo v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void

    .line 67
    :cond_1
    const-string/jumbo v1, "false"

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 13
    sget-boolean v0, Lcom/zeusis/appsnapshot/util/L;->mode_for_release:Z

    if-nez v0, :cond_0

    .line 14
    const-string/jumbo v0, "ScreenScrollShoot"

    const-string/jumbo v1, "[%s]%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # I

    .prologue
    .line 32
    sget-boolean v1, Lcom/zeusis/appsnapshot/util/L;->mode_for_release:Z

    if-nez v1, :cond_0

    .line 33
    const-string/jumbo v1, "[%s][%s]%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "des":Ljava/lang/String;
    const-string/jumbo v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 18
    sget-boolean v1, Lcom/zeusis/appsnapshot/util/L;->mode_for_release:Z

    if-nez v1, :cond_0

    .line 19
    const-string/jumbo v1, "[%s][%s]%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "des":Ljava/lang/String;
    const-string/jumbo v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "msg1"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-boolean v1, Lcom/zeusis/appsnapshot/util/L;->mode_for_release:Z

    if-nez v1, :cond_0

    .line 26
    const-string/jumbo v1, "[%s][%s]%s%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "des":Ljava/lang/String;
    const-string/jumbo v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Z

    .prologue
    .line 39
    sget-boolean v1, Lcom/zeusis/appsnapshot/util/L;->mode_for_release:Z

    if-nez v1, :cond_0

    .line 40
    const-string/jumbo v2, "[%s][%s]%s"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    if-eqz p2, :cond_1

    const-string/jumbo v1, "true"

    :goto_0
    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "des":Ljava/lang/String;
    const-string/jumbo v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void

    .line 41
    :cond_1
    const-string/jumbo v1, "false"

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-boolean v1, Lcom/zeusis/appsnapshot/util/L;->mode_for_release:Z

    if-nez v1, :cond_0

    .line 103
    const-string/jumbo v1, "[%s][%s]%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "des":Ljava/lang/String;
    const-string/jumbo v1, "ScreenScrollShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v0    # "des":Ljava/lang/String;
    :cond_0
    return-void
.end method
