.class public final LM3/n;
.super Lz3/l;
.source "SourceFile"

# interfaces
.implements LH3/f;


# instance fields
.field public final a:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM3/n;->a:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-void
.end method


# virtual methods
.method public final c(Lz3/m;)V
    .locals 2

    new-instance v0, LM3/o;

    iget-object v1, p0, LM3/n;->a:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-direct {v0, p1, v1}, LM3/o;-><init>(Lz3/m;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lz3/m;->a(LB3/b;)V

    invoke-virtual {v0}, LM3/o;->run()V

    return-void
.end method

.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LM3/n;->a:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method
