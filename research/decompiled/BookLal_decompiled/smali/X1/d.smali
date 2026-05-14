.class public final LX1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU1/b;


# instance fields
.field public final a:LX3/a;

.field public final b:LX3/a;

.field public final c:LS1/t;

.field public final d:LX3/a;

.field public final e:LX3/a;


# direct methods
.method public constructor <init>(LX3/a;LX3/a;LS1/t;LX3/a;LX3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/d;->a:LX3/a;

    iput-object p2, p0, LX1/d;->b:LX3/a;

    iput-object p3, p0, LX1/d;->c:LS1/t;

    iput-object p4, p0, LX1/d;->d:LX3/a;

    iput-object p5, p0, LX1/d;->e:LX3/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, LX1/d;->a:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, LX1/d;->b:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LT1/f;

    iget-object v0, p0, LX1/d;->c:LS1/t;

    invoke-virtual {v0}, LS1/t;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LY1/d;

    iget-object v0, p0, LX1/d;->d:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LZ1/d;

    iget-object v0, p0, LX1/d;->e:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, La2/c;

    new-instance v0, LX1/c;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, LX1/c;-><init>(Ljava/util/concurrent/Executor;LT1/f;LY1/d;LZ1/d;La2/c;)V

    return-object v0
.end method
