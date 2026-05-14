.class public final LN0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:LP0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    invoke-static {v0}, Landroidx/work/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LN0/d;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILN0/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/d;->a:Landroid/content/Context;

    iput p2, p0, LN0/d;->b:I

    iget-object p2, p3, LN0/h;->b:LJ2/e;

    new-instance p3, LP0/c;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, LP0/c;-><init>(Landroid/content/Context;LW0/a;LP0/b;)V

    iput-object p3, p0, LN0/d;->c:LP0/c;

    return-void
.end method
