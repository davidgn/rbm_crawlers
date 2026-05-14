.class public final LX/l;
.super LX/m;
.source "SourceFile"


# instance fields
.field public final a:Ld4/h;

.field public final b:Lt4/l;

.field public final c:LX/G;

.field public final d:Lb4/h;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lt4/l;LX/G;Lb4/h;)V
    .locals 1

    const-string v0, "callerContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Ld4/h;

    iput-object p1, p0, LX/l;->a:Ld4/h;

    iput-object p2, p0, LX/l;->b:Lt4/l;

    iput-object p3, p0, LX/l;->c:LX/G;

    iput-object p4, p0, LX/l;->d:Lb4/h;

    return-void
.end method
