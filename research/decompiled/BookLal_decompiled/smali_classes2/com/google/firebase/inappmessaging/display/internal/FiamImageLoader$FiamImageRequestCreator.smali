.class public Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FiamImageRequestCreator"
.end annotation


# instance fields
.field private final requestBuilder:Lcom/bumptech/glide/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;

.field private target:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;

.field final synthetic this$0:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;Lcom/bumptech/glide/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->this$0:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->requestBuilder:Lcom/bumptech/glide/h;

    return-void
.end method

.method private checkAndTag()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->target:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->tag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->this$0:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->access$000(Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->this$0:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->access$000(Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->tag:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->this$0:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->access$000(Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->tag:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->this$0:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;

    invoke-static {v2}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->access$000(Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->tag:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->target:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->target:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public into(Landroid/widget/ImageView;Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Downloading Image Callback : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;->setImageView(Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->requestBuilder:Lcom/bumptech/glide/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ly1/f;->a:LI/i;

    invoke-virtual {p1, p2, p1, v0}, Lcom/bumptech/glide/h;->u(Lv1/d;Lu1/a;LI/i;)V

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->target:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->checkAndTag()V

    return-void
.end method

.method public placeholder(I)Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->requestBuilder:Lcom/bumptech/glide/h;

    invoke-virtual {v0, p1}, Lu1/a;->h(I)Lu1/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Downloading Image Placeholder : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    return-object p0
.end method

.method public tag(Ljava/lang/Class;)Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->tag:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->checkAndTag()V

    return-object p0
.end method
