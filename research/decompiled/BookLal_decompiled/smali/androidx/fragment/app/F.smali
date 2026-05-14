.class public abstract Landroidx/fragment/app/F;
.super Landroidx/activity/p;
.source "SourceFile"

# interfaces
.implements LB/f;


# static fields
.field static final LIFECYCLE_TAG:Ljava/lang/String; = "android:support:lifecycle"


# instance fields
.field mCreated:Z

.field final mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

.field final mFragments:Landroidx/fragment/app/J;

.field mResumed:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/activity/p;-><init>()V

    new-instance v0, Landroidx/fragment/app/E;

    invoke-direct {v0, p0}, Landroidx/fragment/app/E;-><init>(Landroidx/fragment/app/F;)V

    new-instance v1, Landroidx/fragment/app/J;

    invoke-direct {v1, v0}, Landroidx/fragment/app/J;-><init>(Landroidx/fragment/app/E;)V

    iput-object v1, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    new-instance v0, Landroidx/lifecycle/v;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, Landroidx/fragment/app/F;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/F;->mStopped:Z

    invoke-virtual {p0}, Landroidx/activity/p;->getSavedStateRegistry()Ly0/c;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/B;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/B;-><init>(Ljava/lang/Object;I)V

    const-string v2, "android:support:lifecycle"

    invoke-virtual {v0, v2, v1}, Ly0/c;->c(Ljava/lang/String;Ly0/b;)V

    new-instance v0, Landroidx/fragment/app/C;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/C;-><init>(Landroidx/fragment/app/F;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/p;->addOnConfigurationChangedListener(LL/a;)V

    new-instance v0, Landroidx/fragment/app/C;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/C;-><init>(Landroidx/fragment/app/F;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/p;->addOnNewIntentListener(LL/a;)V

    new-instance v0, Landroidx/fragment/app/D;

    invoke-direct {v0, p0}, Landroidx/fragment/app/D;-><init>(Landroidx/fragment/app/F;)V

    invoke-virtual {p0, v0}, Landroidx/activity/p;->addOnContextAvailableListener(Ld/b;)V

    return-void
.end method

.method public static e(Landroidx/fragment/app/Y;)Z
    .locals 5

    iget-object p0, p0, Landroidx/fragment/app/Y;->c:Landroidx/fragment/app/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/Y;

    move-result-object v2

    invoke-static {v2}, Landroidx/fragment/app/F;->e(Landroidx/fragment/app/Y;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_2
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/s0;

    sget-object v3, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/fragment/app/s0;->b()V

    iget-object v2, v2, Landroidx/fragment/app/s0;->c:Landroidx/lifecycle/v;

    iget-object v2, v2, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/s0;

    iget-object v0, v0, Landroidx/fragment/app/s0;->c:Landroidx/lifecycle/v;

    invoke-virtual {v0}, Landroidx/lifecycle/v;->g()V

    move v0, v4

    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/v;

    iget-object v2, v2, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/v;

    invoke-virtual {v0}, Landroidx/lifecycle/v;->g()V

    move v0, v4

    goto :goto_0

    :cond_4
    return v0
.end method


# virtual methods
.method public final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    iget-object v0, v0, Landroidx/fragment/app/J;->a:Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    iget-object v0, v0, Landroidx/fragment/app/Y;->f:Landroidx/fragment/app/M;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/M;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LB/o;->shouldDumpInternalState([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/F;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/F;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/F;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lj0/b;->a(Landroidx/lifecycle/t;)Lj0/f;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lj0/f;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    iget-object v0, v0, Landroidx/fragment/app/J;->a:Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/Y;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/Y;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    iget-object v0, v0, Landroidx/fragment/app/J;->a:Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    return-object v0
.end method

.method public getSupportLoaderManager()Lj0/b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lj0/b;->a(Landroidx/lifecycle/t;)Lj0/f;

    move-result-object v0

    return-object v0
.end method

.method public markFragmentsCreated()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/F;->getSupportFragmentManager()Landroidx/fragment/app/Y;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/F;->e(Landroidx/fragment/app/Y;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    invoke-virtual {v0}, Landroidx/fragment/app/J;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/p;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/p;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/F;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    sget-object v0, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    iget-object p1, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    iget-object p1, p1, Landroidx/fragment/app/J;->a:Landroidx/fragment/app/E;

    iget-object p1, p1, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Y;->E:Z

    iput-boolean v0, p1, Landroidx/fragment/app/Y;->F:Z

    iget-object v1, p1, Landroidx/fragment/app/Y;->L:Landroidx/fragment/app/c0;

    iput-boolean v0, v1, Landroidx/fragment/app/c0;->i:Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Y;->t(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/F;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/F;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    iget-object v0, v0, Landroidx/fragment/app/J;->a:Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    invoke-virtual {v0}, Landroidx/fragment/app/Y;->k()V

    iget-object v0, p0, Landroidx/fragment/app/F;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    sget-object v1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/activity/p;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    iget-object p1, p1, Landroidx/fragment/app/J;->a:Landroidx/fragment/app/E;

    iget-object p1, p1, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Y;->i(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/F;->mResumed:Z

    iget-object v0, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    iget-object v0, v0, Landroidx/fragment/app/J;->a:Landroidx/fragment/app/E;

    const/4 v1, 0x5

    iget-object v0, v0, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Y;->t(I)V

    iget-object v0, p0, Landroidx/fragment/app/F;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    sget-object v1, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/F;->onResumeFragments()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    invoke-virtual {v0}, Landroidx/fragment/app/J;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/p;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    invoke-virtual {v0}, Landroidx/fragment/app/J;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/F;->mResumed:Z

    iget-object v1, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    iget-object v1, v1, Landroidx/fragment/app/J;->a:Landroidx/fragment/app/E;

    iget-object v1, v1, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Y;->x(Z)Z

    return-void
.end method

.method public onResumeFragments()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/F;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    sget-object v1, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    iget-object v0, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    iget-object v0, v0, Landroidx/fragment/app/J;->a:Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Y;->E:Z

    iput-boolean v1, v0, Landroidx/fragment/app/Y;->F:Z

    iget-object v2, v0, Landroidx/fragment/app/Y;->L:Landroidx/fragment/app/c0;

    iput-boolean v1, v2, Landroidx/fragment/app/c0;->i:Z

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Y;->t(I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    invoke-virtual {v0}, Landroidx/fragment/app/J;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/F;->mStopped:Z

    iget-boolean v1, p0, Landroidx/fragment/app/F;->mCreated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Landroidx/fragment/app/F;->mCreated:Z

    iget-object v1, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    iget-object v1, v1, Landroidx/fragment/app/J;->a:Landroidx/fragment/app/E;

    iget-object v1, v1, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    iput-boolean v0, v1, Landroidx/fragment/app/Y;->E:Z

    iput-boolean v0, v1, Landroidx/fragment/app/Y;->F:Z

    iget-object v3, v1, Landroidx/fragment/app/Y;->L:Landroidx/fragment/app/c0;

    iput-boolean v0, v3, Landroidx/fragment/app/c0;->i:Z

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Y;->t(I)V

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    iget-object v1, v1, Landroidx/fragment/app/J;->a:Landroidx/fragment/app/E;

    iget-object v1, v1, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Y;->x(Z)Z

    iget-object v1, p0, Landroidx/fragment/app/F;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    sget-object v2, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    iget-object v1, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    iget-object v1, v1, Landroidx/fragment/app/J;->a:Landroidx/fragment/app/E;

    iget-object v1, v1, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    iput-boolean v0, v1, Landroidx/fragment/app/Y;->E:Z

    iput-boolean v0, v1, Landroidx/fragment/app/Y;->F:Z

    iget-object v2, v1, Landroidx/fragment/app/Y;->L:Landroidx/fragment/app/c0;

    iput-boolean v0, v2, Landroidx/fragment/app/c0;->i:Z

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Y;->t(I)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    invoke-virtual {v0}, Landroidx/fragment/app/J;->a()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/F;->mStopped:Z

    invoke-virtual {p0}, Landroidx/fragment/app/F;->markFragmentsCreated()V

    iget-object v1, p0, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    iget-object v1, v1, Landroidx/fragment/app/J;->a:Landroidx/fragment/app/E;

    iget-object v1, v1, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    iput-boolean v0, v1, Landroidx/fragment/app/Y;->F:Z

    iget-object v2, v1, Landroidx/fragment/app/Y;->L:Landroidx/fragment/app/c0;

    iput-boolean v0, v2, Landroidx/fragment/app/c0;->i:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Y;->t(I)V

    iget-object v0, p0, Landroidx/fragment/app/F;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    sget-object v1, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public setEnterSharedElementCallback(LB/M;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, LB/b;->c(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(LB/M;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, LB/b;->d(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/F;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 1
    invoke-virtual {p0, p2, v0, p4}, Landroidx/activity/p;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    move v3, p3

    if-ne v3, v0, :cond_0

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroidx/activity/p;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p8}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    invoke-static {p0}, LB/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/activity/p;->invalidateMenu()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    invoke-static {p0}, LB/b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    invoke-static {p0}, LB/b;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
