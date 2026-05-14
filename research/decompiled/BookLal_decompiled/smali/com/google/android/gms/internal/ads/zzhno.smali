.class public final Lcom/google/android/gms/internal/ads/zzhno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhmp;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhno;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhno;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhno;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhno;->zza:Lcom/google/android/gms/internal/ads/zzhno;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhno;->zza:Lcom/google/android/gms/internal/ads/zzhno;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhls;->zzc(Lcom/google/android/gms/internal/ads/zzhmp;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzhnm;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzhnm;

    return-object v0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzhky;Lcom/google/android/gms/internal/ads/zzhlg;Lcom/google/android/gms/internal/ads/zzhmo;)Ljava/lang/Object;
    .locals 5

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzhcz;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhcz;->zzc()Lcom/google/android/gms/internal/ads/zzhcx;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhme;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhme;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhky;->zzd()I

    move-result v2

    if-ge v1, v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhcz;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzhcz;->zze(I)Lcom/google/android/gms/internal/ads/zzhcx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhcx;->zzb()Lcom/google/android/gms/internal/ads/zzhcq;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhcq;->zza:Lcom/google/android/gms/internal/ads/zzhcq;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p3, v2}, Lcom/google/android/gms/internal/ads/zzhmo;->zza(Lcom/google/android/gms/internal/ads/zzhcx;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhnm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhcx;->zza()Lcom/google/android/gms/internal/ads/zzhco;

    move-result-object v2

    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzhob;

    if-eqz v4, :cond_0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhob;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhob;->zze()Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v2

    goto :goto_1

    :cond_0
    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzhld;

    if-eqz v4, :cond_1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhld;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhld;->zzd()Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzhme;->zza(Lcom/google/android/gms/internal/ads/zzhzy;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhme;

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhco;->zza()Lcom/google/android/gms/internal/ads/zzhde;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Cannot get output prefix for key of class "

    const-string v1, " with parameters "

    invoke-static {v2, v0, p1, v1, p3}, LC/a;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzhmo;->zza(Lcom/google/android/gms/internal/ads/zzhcx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhnm;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhnn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhme;->zzb()Lcom/google/android/gms/internal/ads/zzhmg;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, p1, v0}, Lcom/google/android/gms/internal/ads/zzhnn;-><init>(Lcom/google/android/gms/internal/ads/zzhmg;Lcom/google/android/gms/internal/ads/zzhnm;[B)V

    return-object p2
.end method
