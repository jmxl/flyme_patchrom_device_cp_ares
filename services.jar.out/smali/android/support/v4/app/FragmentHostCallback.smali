.class public abstract Landroid/support/v4/app/FragmentHostCallback;
.super Landroid/support/v4/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    .line 44
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 60
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 63
    iput p4, p0, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 52
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 56
    return-void
.end method


# virtual methods
.method doLoaderDestroy()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 248
    return-void

    .line 245
    :cond_0
    return-void
.end method

.method doLoaderRetain()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    .line 241
    return-void

    .line 238
    :cond_0
    return-void
.end method

.method doLoaderStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-nez v0, :cond_1

    .line 204
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 206
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_2

    .line 208
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-eqz v0, :cond_3

    .line 215
    :cond_0
    :goto_0
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 216
    return-void

    .line 202
    :cond_1
    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "(root)"

    .line 209
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 211
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    iget-boolean v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_0
.end method

.method doLoaderStop(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 224
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_1

    .line 227
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 229
    if-nez p1, :cond_2

    .line 232
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    .line 234
    :goto_0
    return-void

    .line 221
    :cond_0
    return-void

    .line 225
    :cond_1
    return-void

    .line 230
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    goto :goto_0
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 313
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    .line 318
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_1

    .line 269
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 270
    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {v0, p0}, Landroid/support/v4/app/LoaderManagerImpl;->updateHostController(Landroid/support/v4/app/FragmentHostCallback;)V

    .line 278
    :cond_0
    :goto_1
    return-object v0

    .line 267
    :cond_1
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    goto :goto_0

    .line 271
    :cond_2
    if-eqz p3, :cond_0

    .line 272
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentHostCallback;Z)V

    .line 273
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method getLoaderManagerImpl()Landroid/support/v4/app/LoaderManagerImpl;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 178
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    .line 181
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    const-string/jumbo v0, "(root)"

    .line 182
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 183
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    return-object v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 190
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 192
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 153
    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public onHasView()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 113
    if-ne p3, v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method reportLoaderStart()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_1

    .line 263
    :cond_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v3

    .line 253
    new-array v4, v3, [Landroid/support/v4/app/LoaderManagerImpl;

    .line 254
    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_2

    move v0, v1

    .line 257
    :goto_1
    if-ge v0, v3, :cond_0

    .line 258
    aget-object v1, v4, v0

    .line 259
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->finishRetain()V

    .line 260
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 255
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v0, v4, v2

    .line 254
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method

.method restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    .line 310
    return-void
.end method

.method retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_1

    move v0, v1

    .line 302
    :cond_0
    if-nez v0, :cond_4

    .line 305
    return-object v6

    .line 286
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v3

    .line 287
    new-array v4, v3, [Landroid/support/v4/app/LoaderManagerImpl;

    .line 288
    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_2

    move v0, v1

    .line 291
    :goto_1
    if-ge v1, v3, :cond_0

    .line 292
    aget-object v2, v4, v1

    .line 293
    iget-boolean v5, v2, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v5, :cond_3

    .line 296
    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 297
    iget-object v5, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v0, v4, v2

    .line 288
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 294
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 303
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method
