.class public final Lcom/google/android/gms/internal/consent_sdk/zzrj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzri;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzsz;Ljava/lang/Object;Lcom/google/android/gms/internal/consent_sdk/zzsz;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/zzri;

    const-string v0, ""

    invoke-direct {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/consent_sdk/zzri;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzsz;Ljava/lang/Object;Lcom/google/android/gms/internal/consent_sdk/zzsz;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzrj;->zza:Lcom/google/android/gms/internal/consent_sdk/zzri;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/consent_sdk/zzri;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzri;->zza:Lcom/google/android/gms/internal/consent_sdk/zzsz;

    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzri;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzsz;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza(Lcom/google/android/gms/internal/consent_sdk/zzsz;ILjava/lang/Object;)I

    move-result p1

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzqf;->zza(Lcom/google/android/gms/internal/consent_sdk/zzsz;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzd(Lcom/google/android/gms/internal/consent_sdk/zzsz;Ljava/lang/Object;Lcom/google/android/gms/internal/consent_sdk/zzsz;Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzrj;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzrj;

    const-string v0, ""

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzrj;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzsz;Ljava/lang/Object;Lcom/google/android/gms/internal/consent_sdk/zzsz;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzrj;->zza:Lcom/google/android/gms/internal/consent_sdk/zzri;

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result p1

    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzrj;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzri;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2, p2, p1}, Lcom/google/android/gms/ads/internal/util/client/a;->t(III)I

    move-result p1

    return p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/consent_sdk/zzri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzrj;->zza:Lcom/google/android/gms/internal/consent_sdk/zzri;

    return-object v0
.end method
