.class public final LY1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU1/b;


# instance fields
.field public final a:LT1/e;

.field public final b:LX3/a;

.field public final c:LX3/a;

.field public final d:LS1/t;

.field public final e:LX3/a;

.field public final f:LX3/a;

.field public final g:LX3/a;


# direct methods
.method public constructor <init>(LT1/e;LX3/a;LX3/a;LS1/t;LX3/a;LX3/a;LX3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY1/l;->a:LT1/e;

    iput-object p2, p0, LY1/l;->b:LX3/a;

    iput-object p3, p0, LY1/l;->c:LX3/a;

    iput-object p4, p0, LY1/l;->d:LS1/t;

    iput-object p5, p0, LY1/l;->e:LX3/a;

    iput-object p6, p0, LY1/l;->f:LX3/a;

    iput-object p7, p0, LY1/l;->g:LX3/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, LY1/l;->a:LT1/e;

    iget-object v0, v0, LT1/e;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, LY1/l;->b:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LT1/f;

    iget-object v0, p0, LY1/l;->c:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LZ1/d;

    iget-object v0, p0, LY1/l;->d:LS1/t;

    invoke-virtual {v0}, LS1/t;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LY1/d;

    iget-object v0, p0, LY1/l;->e:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, LY1/l;->f:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, La2/c;

    new-instance v8, Ld3/a;

    const/16 v0, 0x10

    invoke-direct {v8, v0}, Ld3/a;-><init>(I)V

    new-instance v9, Lz2/e;

    const/16 v0, 0xf

    invoke-direct {v9, v0}, Lz2/e;-><init>(I)V

    iget-object v0, p0, LY1/l;->g:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, LZ1/c;

    new-instance v0, LY1/k;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, LY1/k;-><init>(Landroid/content/Context;LT1/f;LZ1/d;LY1/d;Ljava/util/concurrent/Executor;La2/c;Lb2/a;Lb2/a;LZ1/c;)V

    return-object v0
.end method
