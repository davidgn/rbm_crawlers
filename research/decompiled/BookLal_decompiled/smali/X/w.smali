.class public final LX/w;
.super Ld4/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Lkotlin/jvm/internal/m;

.field public e:LX/F;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic l:LX/x;

.field public m:I


# direct methods
.method public constructor <init>(LX/x;Ld4/c;)V
    .locals 0

    iput-object p1, p0, LX/w;->l:LX/x;

    invoke-direct {p0, p2}, Ld4/c;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LX/w;->f:Ljava/lang/Object;

    iget p1, p0, LX/w;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LX/w;->m:I

    iget-object p1, p0, LX/w;->l:LX/x;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LX/x;->a(LX/e;Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
