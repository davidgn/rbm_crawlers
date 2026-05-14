.class public final Lcom/google/android/gms/internal/firebase-auth-api/zztc;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzagk;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzahq;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztc;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/zzagp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagk;->zzH(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzagk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagk;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzagk;->zzA()Lcom/google/android/gms/internal/firebase-auth-api/zzagp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzagp;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzsz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagk;->zzt()Lcom/google/android/gms/internal/firebase-auth-api/zzagg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

    return-object v0
.end method

.method public static synthetic zze()Lcom/google/android/gms/internal/firebase-auth-api/zztc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    return-object v0
.end method

.method public static zzf(Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase-auth-api/zzafx;)Lcom/google/android/gms/internal/firebase-auth-api/zztc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagk;->zzy(Lcom/google/android/gms/internal/firebase-auth-api/zzagk;Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase-auth-api/zzafx;)Lcom/google/android/gms/internal/firebase-auth-api/zzagk;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    return-object p0
.end method

.method public static zzg([BLcom/google/android/gms/internal/firebase-auth-api/zzafx;)Lcom/google/android/gms/internal/firebase-auth-api/zztc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagk;->zzz(Lcom/google/android/gms/internal/firebase-auth-api/zzagk;[BLcom/google/android/gms/internal/firebase-auth-api/zzafx;)Lcom/google/android/gms/internal/firebase-auth-api/zzagk;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    return-object p0
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/firebase-auth-api/zztc;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zzd:I

    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/firebase-auth-api/zztc;Lcom/google/android/gms/internal/firebase-auth-api/zztb;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzagp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagp;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagk;->zzB(Lcom/google/android/gms/internal/firebase-auth-api/zzagp;)Lcom/google/android/gms/internal/firebase-auth-api/zzagp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzagp;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzagp;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzagp;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zzd:I

    return v0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zztb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzagp;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zztb;

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzagp;

    return-object v0
.end method

.method public final zzj(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzsz;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzsz;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzsy;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztc;-><init>()V

    return-object p1

    :cond_3
    const-string p1, "zze"

    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zztb;

    const-string p3, "zzd"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zztc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztc;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagk;->zzE(Lcom/google/android/gms/internal/firebase-auth-api/zzahp;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
