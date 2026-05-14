.class public final synthetic Lcom/google/firebase/inappmessaging/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/a;
.implements LE3/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/inappmessaging/internal/a;->a:I

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/internal/a;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/model/RateLimit;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->f(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/a;->c:Ljava/lang/Object;

    check-cast v1, LZ2/d;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->E(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;LZ2/d;Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)LZ2/j;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/a;->c:Ljava/lang/Object;

    check-cast v0, LL3/g;

    check-cast p1, LZ2/d;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    invoke-static {v1, v0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->a(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;LL3/g;LZ2/d;)Lz3/h;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    check-cast p1, LZ2/d;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    invoke-static {v1, v0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->b(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Ljava/util/HashSet;LZ2/d;)Lz3/c;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, LZ2/d;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/a;->c:Ljava/lang/Object;

    check-cast v1, LZ2/b;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->d(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;LZ2/b;LZ2/d;)Lz3/c;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/internal/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->e(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->j(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/model/Action;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->f(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;Lcom/google/firebase/inappmessaging/model/Action;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->d(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/a;->c:Ljava/lang/Object;

    check-cast v1, LZ2/j;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->e(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;LZ2/j;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
