.class public final Ly4/p;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lk4/l;


# instance fields
.field public final synthetic a:Lk4/l;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lb4/h;


# direct methods
.method public constructor <init>(Lk4/l;Ljava/lang/Object;Lb4/h;)V
    .locals 0

    iput-object p1, p0, Ly4/p;->a:Lk4/l;

    iput-object p2, p0, Ly4/p;->b:Ljava/lang/Object;

    iput-object p3, p0, Ly4/p;->c:Lb4/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Ly4/p;->c:Lb4/h;

    iget-object v0, p0, Ly4/p;->a:Lk4/l;

    iget-object v1, p0, Ly4/p;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ly4/a;->a(Lk4/l;Ljava/lang/Object;Lb4/h;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1
.end method
