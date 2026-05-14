.class public final Landroidx/lifecycle/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/V;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Landroidx/lifecycle/U;

.field public final c:Landroid/os/Bundle;

.field public final d:Landroidx/lifecycle/o;

.field public final e:Ly0/c;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ly0/e;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Ly0/e;->getSavedStateRegistry()Ly0/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/P;->e:Ly0/c;

    invoke-interface {p2}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/P;->d:Landroidx/lifecycle/o;

    iput-object p3, p0, Landroidx/lifecycle/P;->c:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/lifecycle/P;->a:Landroid/app/Application;

    if-eqz p1, :cond_1

    sget-object p2, Landroidx/lifecycle/U;->c:Landroidx/lifecycle/U;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/lifecycle/U;

    invoke-direct {p2, p1}, Landroidx/lifecycle/U;-><init>(Landroid/app/Application;)V

    sput-object p2, Landroidx/lifecycle/U;->c:Landroidx/lifecycle/U;

    :cond_0
    sget-object p1, Landroidx/lifecycle/U;->c:Landroidx/lifecycle/U;

    invoke-static {p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/lifecycle/U;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/lifecycle/U;-><init>(Landroid/app/Application;)V

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/P;->b:Landroidx/lifecycle/U;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/S;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/P;->c(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/S;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/Class;Li0/d;)Landroidx/lifecycle/S;
    .locals 3

    sget-object v0, Landroidx/lifecycle/T;->b:Landroidx/lifecycle/T;

    iget-object v1, p2, Li0/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v2, Landroidx/lifecycle/M;->a:Landroidx/lifecycle/T;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/lifecycle/M;->b:Landroidx/lifecycle/T;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v0, Landroidx/lifecycle/T;->a:Landroidx/lifecycle/T;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Landroidx/lifecycle/Q;->a:Ljava/util/List;

    invoke-static {p1, v2}, Landroidx/lifecycle/Q;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/Q;->b:Ljava/util/List;

    invoke-static {p1, v2}, Landroidx/lifecycle/Q;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/P;->b:Landroidx/lifecycle/U;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/U;->b(Ljava/lang/Class;Li0/d;)Landroidx/lifecycle/S;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroidx/lifecycle/M;->c(Li0/d;)Landroidx/lifecycle/K;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, p2}, Landroidx/lifecycle/Q;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/S;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/M;->c(Li0/d;)Landroidx/lifecycle/K;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, p2}, Landroidx/lifecycle/Q;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/S;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/P;->d:Landroidx/lifecycle/o;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/P;->c(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/S;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/S;
    .locals 7

    iget-object v0, p0, Landroidx/lifecycle/P;->d:Landroidx/lifecycle/o;

    if-eqz v0, :cond_a

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/P;->a:Landroid/app/Application;

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/lifecycle/Q;->a:Ljava/util/List;

    invoke-static {p1, v2}, Landroidx/lifecycle/Q;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/Q;->b:Ljava/util/List;

    invoke-static {p1, v2}, Landroidx/lifecycle/Q;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    iget-object p2, p0, Landroidx/lifecycle/P;->a:Landroid/app/Application;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/lifecycle/P;->b:Landroidx/lifecycle/U;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/U;->a(Ljava/lang/Class;)Landroidx/lifecycle/S;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p2, Landroidx/lifecycle/W;->a:Landroidx/lifecycle/W;

    if-nez p2, :cond_2

    new-instance p2, Landroidx/lifecycle/W;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    sput-object p2, Landroidx/lifecycle/W;->a:Landroidx/lifecycle/W;

    :cond_2
    sget-object p2, Landroidx/lifecycle/W;->a:Landroidx/lifecycle/W;

    invoke-static {p2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroidx/lifecycle/W;->a(Ljava/lang/Class;)Landroidx/lifecycle/S;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    iget-object v3, p0, Landroidx/lifecycle/P;->e:Ly0/c;

    invoke-static {v3}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/lifecycle/P;->c:Landroid/os/Bundle;

    invoke-virtual {v3, p2}, Ly0/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Landroidx/lifecycle/K;->f:[Ljava/lang/Class;

    invoke-static {v5, v4}, Landroidx/lifecycle/M;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/K;

    move-result-object v4

    new-instance v5, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v5, p2, v4}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/K;)V

    invoke-virtual {v5, v0, v3}, Landroidx/lifecycle/SavedStateHandleController;->b(Landroidx/lifecycle/o;Ly0/c;)V

    move-object p2, v0

    check-cast p2, Landroidx/lifecycle/v;

    iget-object p2, p2, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    sget-object v6, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    if-eq p2, v6, :cond_5

    sget-object v6, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    invoke-virtual {p2, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-ltz p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p2, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;

    invoke-direct {p2, v0, v3}, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;-><init>(Landroidx/lifecycle/o;Ly0/c;)V

    invoke-virtual {v0, p2}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v3}, Ly0/c;->d()V

    :goto_3
    if-eqz v1, :cond_6

    iget-object p2, p0, Landroidx/lifecycle/P;->a:Landroid/app/Application;

    if-eqz p2, :cond_6

    filled-new-array {p2, v4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, p2}, Landroidx/lifecycle/Q;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/S;

    move-result-object p1

    goto :goto_4

    :cond_6
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, p2}, Landroidx/lifecycle/Q;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/S;

    move-result-object p1

    :goto_4
    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    iget-object v0, p1, Landroidx/lifecycle/S;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Landroidx/lifecycle/S;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v2, p1, Landroidx/lifecycle/S;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_7
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    move-object v5, v1

    :goto_6
    iget-boolean p2, p1, Landroidx/lifecycle/S;->c:Z

    if-eqz p2, :cond_9

    invoke-static {v5}, Landroidx/lifecycle/S;->a(Ljava/lang/Object;)V

    :cond_9
    return-object p1

    :goto_7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
