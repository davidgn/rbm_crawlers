.class public final LY1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU1/b;


# instance fields
.field public final a:LX3/a;

.field public final b:LX3/a;

.field public final c:LS1/t;

.field public final d:LX3/a;


# direct methods
.method public constructor <init>(LX3/a;LX3/a;LS1/t;LX3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY1/n;->a:LX3/a;

    iput-object p2, p0, LY1/n;->b:LX3/a;

    iput-object p3, p0, LY1/n;->c:LS1/t;

    iput-object p4, p0, LY1/n;->d:LX3/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, LY1/n;->a:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, LY1/n;->b:LX3/a;

    invoke-interface {v1}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZ1/d;

    iget-object v2, p0, LY1/n;->c:LS1/t;

    invoke-virtual {v2}, LS1/t;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY1/d;

    iget-object v3, p0, LY1/n;->d:LX3/a;

    invoke-interface {v3}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La2/c;

    new-instance v4, LY1/m;

    invoke-direct {v4, v0, v1, v2, v3}, LY1/m;-><init>(Ljava/util/concurrent/Executor;LZ1/d;LY1/d;La2/c;)V

    return-object v4
.end method
