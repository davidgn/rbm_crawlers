.class public final LM3/l;
.super Lz3/a;
.source "SourceFile"

# interfaces
.implements LH3/b;


# instance fields
.field public final a:LM3/c;

.field public final b:Lcom/google/firebase/inappmessaging/internal/s;


# direct methods
.method public constructor <init>(LM3/c;Lcom/google/firebase/inappmessaging/internal/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM3/l;->a:LM3/c;

    iput-object p2, p0, LM3/l;->b:Lcom/google/firebase/inappmessaging/internal/s;

    return-void
.end method


# virtual methods
.method public final a()Lz3/l;
    .locals 4

    new-instance v0, LM3/c;

    iget-object v1, p0, LM3/l;->b:Lcom/google/firebase/inappmessaging/internal/s;

    iget-object v2, p0, LM3/l;->a:LM3/c;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, LM3/c;-><init>(Lz3/l;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final e(Lz3/b;)V
    .locals 2

    new-instance v0, LM3/k;

    iget-object v1, p0, LM3/l;->b:Lcom/google/firebase/inappmessaging/internal/s;

    invoke-direct {v0, p1, v1}, LM3/k;-><init>(Lz3/b;Lcom/google/firebase/inappmessaging/internal/s;)V

    iget-object p1, p0, LM3/l;->a:LM3/c;

    invoke-virtual {p1, v0}, Lz3/l;->b(Lz3/m;)V

    return-void
.end method
