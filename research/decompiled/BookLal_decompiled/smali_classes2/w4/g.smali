.class public final Lw4/g;
.super Ld4/c;
.source "SourceFile"


# instance fields
.field public a:Lw4/h;

.field public b:Lw4/b;

.field public c:Lw4/j;

.field public d:Lt4/W;

.field public e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic l:Lw4/h;

.field public m:I


# direct methods
.method public constructor <init>(Lw4/h;Ld4/c;)V
    .locals 0

    iput-object p1, p0, Lw4/g;->l:Lw4/h;

    invoke-direct {p0, p2}, Ld4/c;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lw4/g;->f:Ljava/lang/Object;

    iget p1, p0, Lw4/g;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lw4/g;->m:I

    iget-object p1, p0, Lw4/g;->l:Lw4/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lw4/h;->a(Lw4/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    sget-object p1, Lc4/a;->a:Lc4/a;

    return-object p1
.end method
