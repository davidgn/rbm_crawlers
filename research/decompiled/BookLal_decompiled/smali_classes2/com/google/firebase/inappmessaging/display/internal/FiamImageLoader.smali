.class public Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/firebase/inappmessaging/display/internal/injection/scopes/FirebaseAppScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;,
        Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;
    }
.end annotation


# instance fields
.field private final requestManager:Lcom/bumptech/glide/i;

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lv1/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->tags:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->requestManager:Lcom/bumptech/glide/i;

    return-void
.end method

.method public static synthetic access$000(Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->tags:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public cancelTag(Ljava/lang/Class;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv1/b;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->requestManager:Lcom/bumptech/glide/i;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/i;->a(Lv1/d;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsTag(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->tags:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public load(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting Downloading Image : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    new-instance v0, Li1/g;

    new-instance v1, Li1/i;

    invoke-direct {v1}, Li1/i;-><init>()V

    new-instance v2, Li1/j;

    const-string v3, "image/*"

    invoke-direct {v2, v3}, Li1/j;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    iget-object v4, v1, Li1/i;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iget-object v4, v1, Li1/i;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v3, v1, Li1/i;->a:Ljava/util/Map;

    iget-object v3, v1, Li1/i;->a:Ljava/util/Map;

    const-string v4, "Accept"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Li1/i;->a:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    new-instance v3, Li1/k;

    iget-object v1, v1, Li1/i;->a:Ljava/util/Map;

    invoke-direct {v3, v1}, Li1/k;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, p1, v3}, Li1/g;-><init>(Ljava/lang/String;Li1/k;)V

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->requestManager:Lcom/bumptech/glide/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/bumptech/glide/h;

    iget-object v3, p1, Lcom/bumptech/glide/i;->a:Lcom/bumptech/glide/b;

    iget-object v4, p1, Lcom/bumptech/glide/i;->b:Landroid/content/Context;

    const-class v5, Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v3, p1, v5, v4}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/i;Ljava/lang/Class;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/bumptech/glide/h;->B:Ljava/lang/Object;

    iput-boolean v2, v1, Lcom/bumptech/glide/h;->D:Z

    sget-object p1, Lb1/b;->a:Lb1/b;

    sget-object v0, Ll1/o;->f:Lb1/g;

    invoke-virtual {v1, v0, p1}, Lu1/a;->l(Lb1/g;Ljava/lang/Object;)Lu1/a;

    move-result-object v0

    sget-object v1, Lp1/h;->a:Lb1/g;

    invoke-virtual {v0, v1, p1}, Lu1/a;->l(Lb1/g;Ljava/lang/Object;)Lu1/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/h;

    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;-><init>(Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;Lcom/bumptech/glide/h;)V

    return-object v0
.end method
