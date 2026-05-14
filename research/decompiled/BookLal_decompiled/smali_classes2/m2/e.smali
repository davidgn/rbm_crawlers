.class public final Lm2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lz2/a;


# instance fields
.field public final a:Lz2/c;

.field public final b:Lz2/c;

.field public final c:Lz2/c;

.field public final d:Lz2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/a;-><init>(F)V

    sput-object v0, Lm2/e;->e:Lz2/a;

    return-void
.end method

.method public constructor <init>(Lz2/c;Lz2/c;Lz2/c;Lz2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm2/e;->a:Lz2/c;

    iput-object p3, p0, Lm2/e;->b:Lz2/c;

    iput-object p4, p0, Lm2/e;->c:Lz2/c;

    iput-object p2, p0, Lm2/e;->d:Lz2/c;

    return-void
.end method
