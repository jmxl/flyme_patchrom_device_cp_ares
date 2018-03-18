.class final Lcom/android/server/TextBoomManagerService;
.super Landroid/app/ITextBoomManager$Stub;
.source "TextBoomManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdaptPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/AdaptPkg;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mTecentMMChatUI:Ljava/lang/String;

.field private mTecentMMInputUIId:Ljava/lang/String;

.field private mTecentMMLauncherUI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/server/TextBoomManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TextBoomManagerService;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/ITextBoomManager$Stub;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/TextBoomManagerService;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextBoomManagerService;->mAdaptPkgs:Ljava/util/List;

    .line 45
    return-void
.end method

.method private getAdaptPkg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AdaptPkg;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v2, p0, Lcom/android/server/TextBoomManagerService;->mAdaptPkgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ap$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AdaptPkg;

    .line 147
    .local v0, "ap":Landroid/app/AdaptPkg;
    invoke-virtual {v0}, Landroid/app/AdaptPkg;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    invoke-virtual {v0}, Landroid/app/AdaptPkg;->getActivity()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 147
    if-eqz v2, :cond_0

    .line 149
    :cond_1
    return-object v0

    .line 152
    .end local v0    # "ap":Landroid/app/AdaptPkg;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public adaptActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 80
    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextBoomManagerService;->getAdaptPkg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AdaptPkg;

    move-result-object v0

    .line 81
    .local v0, "ap":Landroid/app/AdaptPkg;
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/app/AdaptPkg;

    .end local v0    # "ap":Landroid/app/AdaptPkg;
    invoke-direct {v0, p1, p2, p3}, Landroid/app/AdaptPkg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .restart local v0    # "ap":Landroid/app/AdaptPkg;
    iget-object v1, p0, Lcom/android/server/TextBoomManagerService;->mAdaptPkgs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    return-void

    .line 85
    :cond_0
    :try_start_1
    invoke-virtual {v0, p3}, Landroid/app/AdaptPkg;->setIntputId(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    .end local v0    # "ap":Landroid/app/AdaptPkg;
    :catchall_0
    move-exception v1

    .line 88
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    throw v1
.end method

.method public disableAdaptPkg(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 58
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TextBoomManagerService;->mAdaptPkgs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 59
    .local v1, "apIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/AdaptPkg;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AdaptPkg;

    .line 61
    .local v0, "ap":Landroid/app/AdaptPkg;
    invoke-virtual {v0}, Landroid/app/AdaptPkg;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 65
    .end local v0    # "ap":Landroid/app/AdaptPkg;
    .end local v1    # "apIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/AdaptPkg;>;"
    :catchall_0
    move-exception v4

    .line 66
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    throw v4

    .line 66
    .restart local v1    # "apIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/AdaptPkg;>;"
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    return-void
.end method

.method public getAdaptActivityFlag(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "isMinor"    # Z

    .prologue
    .line 132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 134
    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextBoomManagerService;->getAdaptPkg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AdaptPkg;

    move-result-object v0

    .line 135
    .local v0, "ap":Landroid/app/AdaptPkg;
    if-eqz v0, :cond_1

    .line 136
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Landroid/app/AdaptPkg;->isMinorFlag()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 139
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/app/AdaptPkg;->isFlag()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 139
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    const/4 v1, 0x0

    return v1

    .line 138
    .end local v0    # "ap":Landroid/app/AdaptPkg;
    :catchall_0
    move-exception v1

    .line 139
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    throw v1
.end method

.method public getAdaptInputId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 106
    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextBoomManagerService;->getAdaptPkg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AdaptPkg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 107
    .local v0, "ap":Landroid/app/AdaptPkg;
    if-nez v0, :cond_0

    .line 109
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/app/AdaptPkg;->getIntputId()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 108
    .end local v0    # "ap":Landroid/app/AdaptPkg;
    :catchall_0
    move-exception v1

    .line 109
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    throw v1
.end method

.method public getAdaptPkgs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/AdaptPkg;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 159
    .local v0, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TextBoomManagerService;->mAdaptPkgs:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/TextBoomManagerService;->mAdaptPkgs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    return-object v6

    .line 160
    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AdaptPkg;>;"
    iget-object v5, p0, Lcom/android/server/TextBoomManagerService;->mAdaptPkgs:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AdaptPkg;

    .line 162
    .local v2, "pkg":Landroid/app/AdaptPkg;
    invoke-virtual {v2}, Landroid/app/AdaptPkg;->isFlag()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Landroid/app/AdaptPkg;->isMinorFlag()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 163
    :cond_3
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    .end local v2    # "pkg":Landroid/app/AdaptPkg;
    .end local v3    # "pkg$iterator":Ljava/util/Iterator;
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AdaptPkg;>;"
    :catchall_0
    move-exception v5

    .line 170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    throw v5

    .line 170
    .restart local v3    # "pkg$iterator":Ljava/util/Iterator;
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AdaptPkg;>;"
    :cond_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    return-object v4
.end method

.method public isAdapted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 96
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextBoomManagerService;->getAdaptPkg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AdaptPkg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 98
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v2

    .line 98
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    throw v2
.end method

.method public setAdaptActivityFlag(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "flag"    # Z
    .param p4, "isMinor"    # Z

    .prologue
    .line 115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 117
    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextBoomManagerService;->getAdaptPkg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AdaptPkg;

    move-result-object v0

    .line 118
    .local v0, "ap":Landroid/app/AdaptPkg;
    if-eqz v0, :cond_0

    .line 119
    if-eqz p4, :cond_1

    .line 120
    invoke-virtual {v0, p3}, Landroid/app/AdaptPkg;->setMinorFlag(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    return-void

    .line 122
    :cond_1
    :try_start_1
    invoke-virtual {v0, p3}, Landroid/app/AdaptPkg;->setFlag(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    .end local v0    # "ap":Landroid/app/AdaptPkg;
    :catchall_0
    move-exception v1

    .line 126
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    throw v1
.end method
