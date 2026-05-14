.class public final Lcom/google/android/recaptcha/internal/zzkd;
.super Lcom/google/android/recaptcha/internal/zzgo;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzhz;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zzkd;


# instance fields
.field private zzd:Lcom/google/android/recaptcha/internal/zzgv;

.field private zze:Lcom/google/android/recaptcha/internal/zzfw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/recaptcha/internal/zzkd;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzkd;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzkd;->zzb:Lcom/google/android/recaptcha/internal/zzkd;

    const-class v1, Lcom/google/android/recaptcha/internal/zzkd;

    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzgo;->zzC(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzgo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzgo;-><init>()V

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzgo;->zzw()Lcom/google/android/recaptcha/internal/zzgv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzkd;->zzd:Lcom/google/android/recaptcha/internal/zzgv;

    return-void
.end method

.method public static synthetic zzf()Lcom/google/android/recaptcha/internal/zzkd;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzkd;->zzb:Lcom/google/android/recaptcha/internal/zzkd;

    return-object v0
.end method


# virtual methods
.method public final zzh(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/recaptcha/internal/zzkd;->zzb:Lcom/google/android/recaptcha/internal/zzkd;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzkc;

    invoke-direct {p1, p3}, Lcom/google/android/recaptcha/internal/zzkc;-><init>(Lcom/google/android/recaptcha/internal/zzkb;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzkd;

    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zzkd;-><init>()V

    return-object p1

    :cond_3
    const-class p1, Lcom/google/android/recaptcha/internal/zzlm;

    const-string p2, "zze"

    const-string p3, "zzd"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/recaptcha/internal/zzkd;->zzb:Lcom/google/android/recaptcha/internal/zzkd;

    const-string p3, "\u0000\u0002\u0000\u0000\u000c\r\u0002\u0000\u0001\u0000\u000c\u001b\r\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzgo;->zzz(Lcom/google/android/recaptcha/internal/zzhy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
