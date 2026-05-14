.class public final LM3/d;
.super Lz3/q;
.source "SourceFile"

# interfaces
.implements LH3/b;


# instance fields
.field public final a:LM3/c;

.field public final b:LG3/b;


# direct methods
.method public constructor <init>(LM3/c;LG3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM3/d;->a:LM3/c;

    iput-object p2, p0, LM3/d;->b:LG3/b;

    return-void
.end method


# virtual methods
.method public final a()Lz3/l;
    .locals 4

    new-instance v0, LM3/c;

    iget-object v1, p0, LM3/d;->a:LM3/c;

    iget-object v2, p0, LM3/d;->b:LG3/b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LM3/c;-><init>(Lz3/l;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final c(Lz3/r;)V
    .locals 3

    new-instance v0, LM3/b;

    iget-object v1, p0, LM3/d;->b:LG3/b;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, LM3/b;-><init>(Ljava/lang/Object;LG3/b;I)V

    iget-object p1, p0, LM3/d;->a:LM3/c;

    invoke-virtual {p1, v0}, Lz3/l;->b(Lz3/m;)V

    return-void
.end method
