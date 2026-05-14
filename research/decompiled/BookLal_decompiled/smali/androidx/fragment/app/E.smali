.class public final Landroidx/fragment/app/E;
.super Landroidx/fragment/app/K;
.source "SourceFile"

# interfaces
.implements LC/l;
.implements LC/m;
.implements LB/J;
.implements LB/K;
.implements Landroidx/lifecycle/Y;
.implements Landroidx/activity/H;
.implements Le/j;
.implements Ly0/e;
.implements Landroidx/fragment/app/d0;
.implements LM/l;


# instance fields
.field public final synthetic e:Landroidx/fragment/app/F;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/F;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-direct {p0, p1}, Landroidx/fragment/app/K;-><init>(Landroidx/fragment/app/F;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/F;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final addMenuProvider(LM/r;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0, p1}, Landroidx/activity/p;->addMenuProvider(LM/r;)V

    return-void
.end method

.method public final addOnConfigurationChangedListener(LL/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0, p1}, Landroidx/activity/p;->addOnConfigurationChangedListener(LL/a;)V

    return-void
.end method

.method public final addOnMultiWindowModeChangedListener(LL/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0, p1}, Landroidx/activity/p;->addOnMultiWindowModeChangedListener(LL/a;)V

    return-void
.end method

.method public final addOnPictureInPictureModeChangedListener(LL/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0, p1}, Landroidx/activity/p;->addOnPictureInPictureModeChangedListener(LL/a;)V

    return-void
.end method

.method public final addOnTrimMemoryListener(LL/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0, p1}, Landroidx/activity/p;->addOnTrimMemoryListener(LL/a;)V

    return-void
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getActivityResultRegistry()Le/i;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0}, Landroidx/activity/p;->getActivityResultRegistry()Le/i;

    move-result-object v0

    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    iget-object v0, v0, Landroidx/fragment/app/F;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/G;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0}, Landroidx/activity/p;->getOnBackPressedDispatcher()Landroidx/activity/G;

    move-result-object v0

    return-object v0
.end method

.method public final getSavedStateRegistry()Ly0/c;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0}, Landroidx/activity/p;->getSavedStateRegistry()Ly0/c;

    move-result-object v0

    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/X;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0}, Landroidx/activity/p;->getViewModelStore()Landroidx/lifecycle/X;

    move-result-object v0

    return-object v0
.end method

.method public final removeMenuProvider(LM/r;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0, p1}, Landroidx/activity/p;->removeMenuProvider(LM/r;)V

    return-void
.end method

.method public final removeOnConfigurationChangedListener(LL/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0, p1}, Landroidx/activity/p;->removeOnConfigurationChangedListener(LL/a;)V

    return-void
.end method

.method public final removeOnMultiWindowModeChangedListener(LL/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0, p1}, Landroidx/activity/p;->removeOnMultiWindowModeChangedListener(LL/a;)V

    return-void
.end method

.method public final removeOnPictureInPictureModeChangedListener(LL/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0, p1}, Landroidx/activity/p;->removeOnPictureInPictureModeChangedListener(LL/a;)V

    return-void
.end method

.method public final removeOnTrimMemoryListener(LL/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Landroidx/fragment/app/F;

    invoke-virtual {v0, p1}, Landroidx/activity/p;->removeOnTrimMemoryListener(LL/a;)V

    return-void
.end method
