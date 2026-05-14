.class public abstract Lh/i;
.super Landroidx/fragment/app/F;
.source "SourceFile"

# interfaces
.implements Lh/j;


# instance fields
.field public a:Lh/z;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/F;-><init>()V

    invoke-virtual {p0}, Landroidx/activity/p;->getSavedStateRegistry()Ly0/c;

    move-result-object v0

    new-instance v1, Lh/g;

    invoke-direct {v1, p0}, Lh/g;-><init>(Lh/i;)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Ly0/c;->c(Ljava/lang/String;Ly0/b;)V

    new-instance v0, Lh/h;

    invoke-direct {v0, p0}, Lh/h;-><init>(Lh/i;)V

    invoke-virtual {p0, v0}, Landroidx/activity/p;->addOnContextAvailableListener(Ld/b;)V

    return-void
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0}, Lh/i;->h()V

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    check-cast v0, Lh/z;

    invoke-virtual {v0}, Lh/z;->w()V

    iget-object v1, v0, Lh/z;->F:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, v0, Lh/z;->r:Lh/u;

    iget-object p2, v0, Lh/z;->q:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh/u;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v1

    check-cast v1, Lh/z;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lh/z;->T:Z

    iget v3, v1, Lh/z;->X:I

    const/16 v4, -0x64

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    sget v3, Lh/n;->b:I

    :goto_0
    invoke-virtual {v1, p1, v3}, Lh/z;->C(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p1}, Lh/n;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p1}, Lh/n;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {}, LI/b;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lh/n;->f:Z

    if-nez v3, :cond_7

    sget-object v3, Lh/n;->a:Lh/F;

    new-instance v4, Lh/k;

    invoke-direct {v4, p1, v0}, Lh/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Lh/F;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_2
    sget-object v3, Lh/n;->n:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lh/n;->c:LI/m;

    if-nez v4, :cond_5

    sget-object v4, Lh/n;->d:LI/m;

    if-nez v4, :cond_3

    invoke-static {p1}, Landroid/support/v4/media/session/a;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LI/m;->a(Ljava/lang/String;)LI/m;

    move-result-object v4

    sput-object v4, Lh/n;->d:LI/m;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    sget-object v4, Lh/n;->d:LI/m;

    iget-object v4, v4, LI/m;->a:LI/n;

    iget-object v4, v4, LI/n;->a:Landroid/os/LocaleList;

    invoke-virtual {v4}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    monitor-exit v3

    goto :goto_4

    :cond_4
    sget-object v4, Lh/n;->d:LI/m;

    sput-object v4, Lh/n;->c:LI/m;

    goto :goto_2

    :cond_5
    sget-object v5, Lh/n;->d:LI/m;

    invoke-virtual {v4, v5}, LI/m;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lh/n;->c:LI/m;

    sput-object v4, Lh/n;->d:LI/m;

    iget-object v4, v4, LI/m;->a:LI/n;

    iget-object v4, v4, LI/n;->a:Landroid/os/LocaleList;

    invoke-virtual {v4}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/support/v4/media/session/a;->t(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_2
    monitor-exit v3

    goto :goto_4

    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_7
    :goto_4
    invoke-static {p1}, Lh/z;->p(Landroid/content/Context;)LI/m;

    move-result-object v3

    sget-boolean v4, Lh/z;->p0:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    instance-of v4, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v4, :cond_8

    invoke-static {p1, v1, v3, v5, v0}, Lh/z;->t(Landroid/content/Context;ILI/m;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v4

    :try_start_1
    move-object v6, p1

    check-cast v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v6, v4}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_b

    :catch_0
    :cond_8
    instance-of v4, p1, Lj/d;

    if-eqz v4, :cond_9

    invoke-static {p1, v1, v3, v5, v0}, Lh/z;->t(Landroid/content/Context;ILI/m;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v0

    :try_start_2
    move-object v4, p1

    check-cast v4, Lj/d;

    invoke-virtual {v4, v0}, Lj/d;->a(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_b

    :catch_1
    :cond_9
    sget-boolean v0, Lh/z;->o0:Z

    if-nez v0, :cond_a

    goto/16 :goto_b

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    const/4 v6, -0x1

    iput v6, v4, Landroid/content/res/Configuration;->uiMode:I

    const/4 v6, 0x0

    iput v6, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v8, v7, Landroid/content/res/Configuration;->uiMode:I

    iput v8, v4, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v4, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v8

    if-nez v8, :cond_20

    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput v6, v8, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v4, v7}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_5

    :cond_b
    iget v6, v4, Landroid/content/res/Configuration;->fontScale:F

    iget v9, v7, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_c

    iput v9, v8, Landroid/content/res/Configuration;->fontScale:F

    :cond_c
    iget v6, v4, Landroid/content/res/Configuration;->mcc:I

    iget v9, v7, Landroid/content/res/Configuration;->mcc:I

    if-eq v6, v9, :cond_d

    iput v9, v8, Landroid/content/res/Configuration;->mcc:I

    :cond_d
    iget v6, v4, Landroid/content/res/Configuration;->mnc:I

    iget v9, v7, Landroid/content/res/Configuration;->mnc:I

    if-eq v6, v9, :cond_e

    iput v9, v8, Landroid/content/res/Configuration;->mnc:I

    :cond_e
    invoke-static {v4, v7, v8}, Lh/s;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v6, v4, Landroid/content/res/Configuration;->touchscreen:I

    iget v9, v7, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v6, v9, :cond_f

    iput v9, v8, Landroid/content/res/Configuration;->touchscreen:I

    :cond_f
    iget v6, v4, Landroid/content/res/Configuration;->keyboard:I

    iget v9, v7, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v9, :cond_10

    iput v9, v8, Landroid/content/res/Configuration;->keyboard:I

    :cond_10
    iget v6, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v9, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v6, v9, :cond_11

    iput v9, v8, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_11
    iget v6, v4, Landroid/content/res/Configuration;->navigation:I

    iget v9, v7, Landroid/content/res/Configuration;->navigation:I

    if-eq v6, v9, :cond_12

    iput v9, v8, Landroid/content/res/Configuration;->navigation:I

    :cond_12
    iget v6, v4, Landroid/content/res/Configuration;->navigationHidden:I

    iget v9, v7, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v6, v9, :cond_13

    iput v9, v8, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_13
    iget v6, v4, Landroid/content/res/Configuration;->orientation:I

    iget v9, v7, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v9, :cond_14

    iput v9, v8, Landroid/content/res/Configuration;->orientation:I

    :cond_14
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    iget v9, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v9, v9, 0xf

    if-eq v6, v9, :cond_15

    iget v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    :cond_15
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0xc0

    iget v9, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v9, v9, 0xc0

    if-eq v6, v9, :cond_16

    iget v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    :cond_16
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0x30

    iget v9, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v9, v9, 0x30

    if-eq v6, v9, :cond_17

    iget v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    :cond_17
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0x300

    iget v9, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v9, v9, 0x300

    if-eq v6, v9, :cond_18

    iget v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    :cond_18
    iget v6, v4, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0x3

    iget v9, v7, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v9, v9, 0x3

    if-eq v6, v9, :cond_19

    iget v6, v8, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->colorMode:I

    :cond_19
    iget v6, v4, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0xc

    iget v9, v7, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v9, v9, 0xc

    if-eq v6, v9, :cond_1a

    iget v6, v8, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->colorMode:I

    :cond_1a
    iget v6, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    iget v9, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0xf

    if-eq v6, v9, :cond_1b

    iget v6, v8, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->uiMode:I

    :cond_1b
    iget v6, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    iget v9, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0x30

    if-eq v6, v9, :cond_1c

    iget v6, v8, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->uiMode:I

    :cond_1c
    iget v6, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v9, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v6, v9, :cond_1d

    iput v9, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_1d
    iget v6, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v9, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v6, v9, :cond_1e

    iput v9, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_1e
    iget v6, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v9, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v6, v9, :cond_1f

    iput v9, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_1f
    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    iget v6, v7, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v4, v6, :cond_21

    iput v6, v8, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_5

    :cond_20
    move-object v8, v5

    :cond_21
    :goto_5
    invoke-static {p1, v1, v3, v8, v2}, Lh/z;->t(Landroid/content/Context;ILI/m;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v1

    new-instance v3, Lj/d;

    const v4, 0x7f1201fb

    invoke-direct {v3, p1, v4}, Lj/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v1}, Lj/d;->a(Landroid/content/res/Configuration;)V

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz p1, :cond_25

    invoke-virtual {v3}, Lj/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_22

    invoke-static {p1}, LD/o;->a(Landroid/content/res/Resources$Theme;)V

    goto :goto_a

    :cond_22
    sget-object v0, LD/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    sget-boolean v1, LD/b;->g:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_23

    :try_start_5
    const-class v1, Landroid/content/res/Resources$Theme;

    const-string v4, "rebase"

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, LD/b;->f:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_9

    :catch_2
    move-exception v1

    :try_start_6
    const-string v4, "ResourcesCompat"

    const-string v6, "Failed to retrieve rebase() method"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    sput-boolean v2, LD/b;->g:Z

    :cond_23
    sget-object v1, LD/b;->f:Ljava/lang/reflect/Method;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_24

    :try_start_7
    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_8

    :catch_3
    move-exception p1

    goto :goto_7

    :catch_4
    move-exception p1

    :goto_7
    :try_start_8
    const-string v1, "ResourcesCompat"

    const-string v2, "Failed to invoke rebase() method via reflection"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v5, LD/b;->f:Ljava/lang/reflect/Method;

    :cond_24
    :goto_8
    monitor-exit v0

    goto :goto_a

    :goto_9
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1

    :catch_5
    :cond_25
    :goto_a
    move-object p1, v3

    :goto_b
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LZ2/l;->p()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, LZ2/l;->L(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, LB/o;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final f()Lh/n;
    .locals 2

    iget-object v0, p0, Lh/i;->a:Lh/z;

    if-nez v0, :cond_0

    sget-object v0, Lh/n;->a:Lh/F;

    new-instance v0, Lh/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0, p0}, Lh/z;-><init>(Landroid/content/Context;Landroid/view/Window;Lh/j;Ljava/lang/Object;)V

    iput-object v0, p0, Lh/i;->a:Lh/z;

    :cond_0
    iget-object v0, p0, Lh/i;->a:Lh/z;

    return-object v0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    check-cast v0, Lh/z;

    invoke-virtual {v0}, Lh/z;->w()V

    iget-object v0, v0, Lh/z;->q:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final g()LZ2/l;
    .locals 1

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    check-cast v0, Lh/z;

    invoke-virtual {v0}, Lh/z;->A()V

    iget-object v0, v0, Lh/z;->t:LZ2/l;

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    check-cast v0, Lh/z;

    iget-object v1, v0, Lh/z;->u:Lj/i;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lh/z;->A()V

    new-instance v1, Lj/i;

    iget-object v2, v0, Lh/z;->t:LZ2/l;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LZ2/l;->A()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lh/z;->p:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v2}, Lj/i;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lh/z;->u:Lj/i;

    :cond_1
    iget-object v0, v0, Lh/z;->u:Lj/i;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    sget v0, Ll/h1;->a:I

    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/M;->f(Landroid/view/View;Landroidx/lifecycle/t;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f090405

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, LS4/b;->C(Landroid/view/View;Ly0/e;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f090403

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final i(Landroidx/appcompat/widget/Toolbar;)V
    .locals 4

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    check-cast v0, Lh/z;

    iget-object v1, v0, Lh/z;->o:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lh/z;->A()V

    iget-object v1, v0, Lh/z;->t:LZ2/l;

    instance-of v2, v1, Lh/M;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    iput-object v2, v0, Lh/z;->u:Lj/i;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LZ2/l;->J()V

    :cond_1
    iput-object v2, v0, Lh/z;->t:LZ2/l;

    if-eqz p1, :cond_3

    new-instance v1, Lh/I;

    iget-object v2, v0, Lh/z;->o:Ljava/lang/Object;

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lh/z;->v:Ljava/lang/CharSequence;

    :goto_0
    iget-object v3, v0, Lh/z;->r:Lh/u;

    invoke-direct {v1, p1, v2, v3}, Lh/I;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Lh/u;)V

    iput-object v1, v0, Lh/z;->t:LZ2/l;

    iget-object v2, v0, Lh/z;->r:Lh/u;

    iget-object v1, v1, Lh/I;->d:Lh/H;

    iput-object v1, v2, Lh/u;->b:Lh/H;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, v0, Lh/z;->r:Lh/u;

    iput-object v2, p1, Lh/u;->b:Lh/H;

    :goto_1
    invoke-virtual {v0}, Lh/z;->b()V

    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    invoke-virtual {v0}, Lh/n;->b()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/activity/p;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object p1

    check-cast p1, Lh/z;

    iget-boolean v0, p1, Lh/z;->K:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lh/z;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lh/z;->A()V

    iget-object v0, p1, Lh/z;->t:LZ2/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LZ2/l;->I()V

    :cond_0
    invoke-static {}, Ll/t;->a()Ll/t;

    move-result-object v0

    iget-object v1, p1, Lh/z;->p:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Ll/t;->a:Ll/J0;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v2, Ll/J0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/e;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lr/e;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p1, Lh/z;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p1, Lh/z;->W:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lh/z;->n(ZZ)Z

    return-void

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/F;->onDestroy()V

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    invoke-virtual {v0}, Lh/n;->e()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/F;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x102002c

    const/4 v2, 0x0

    if-ne p2, v1, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p1}, LZ2/l;->y()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_9

    invoke-static {p0}, LB/k;->a(Lh/i;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, LB/k;->a(Lh/i;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {p0}, LB/k;->a(Lh/i;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :try_start_0
    invoke-static {p0, v1}, LB/k;->b(Lh/i;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p0, v1}, LB/k;->b(Lh/i;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :goto_1
    const-string p2, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    new-array p2, v2, [Landroid/content/Intent;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    new-instance p2, Landroid/content/Intent;

    aget-object v1, p1, v2

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v1, 0x1000c000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    aput-object p2, p1, v2

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, LC/i;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Landroid/content/Intent;

    array-length v1, p1

    sub-int/2addr v1, v0

    aget-object p1, p1, v1

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_3

    :cond_8
    move v0, v2

    :goto_3
    return v0

    :cond_9
    return v2
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object p1

    check-cast p1, Lh/z;

    invoke-virtual {p1}, Lh/z;->w()V

    return-void
.end method

.method public final onPostResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/F;->onPostResume()V

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    check-cast v0, Lh/z;

    invoke-virtual {v0}, Lh/z;->A()V

    iget-object v0, v0, Lh/z;->t:LZ2/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LZ2/l;->T(Z)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/F;->onStart()V

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    check-cast v0, Lh/z;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lh/z;->n(ZZ)Z

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/F;->onStop()V

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    check-cast v0, Lh/z;

    invoke-virtual {v0}, Lh/z;->A()V

    iget-object v0, v0, Lh/z;->t:LZ2/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LZ2/l;->T(Z)V

    :cond_0
    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object p2

    invoke-virtual {p2, p1}, Lh/n;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final openOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LZ2/l;->N()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh/i;->h()V

    .line 2
    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/n;->i(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lh/i;->h()V

    .line 4
    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/n;->k(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lh/i;->h()V

    .line 6
    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh/n;->l(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    check-cast v0, Lh/z;

    iput p1, v0, Lh/z;->Y:I

    return-void
.end method

.method public final supportInvalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lh/i;->f()Lh/n;

    move-result-object v0

    invoke-virtual {v0}, Lh/n;->b()V

    return-void
.end method
