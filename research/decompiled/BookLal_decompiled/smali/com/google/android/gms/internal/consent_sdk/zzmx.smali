.class public final Lcom/google/android/gms/internal/consent_sdk/zzmx;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzmx;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:I

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzmx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzmx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzmx;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzmx;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zzmx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzz(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzmx;->zze:I

    return-void
.end method

.method public static bridge synthetic zza()Lcom/google/android/gms/internal/consent_sdk/zzmx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzmx;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzmx;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    add-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzmx;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzmx;

    return-object v0

    :cond_0
    throw v2

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzmf;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/consent_sdk/zzmf;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzmw;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzmx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzmx;-><init>()V

    return-object v0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzoq;->zza()Lcom/google/android/gms/internal/consent_sdk/zzqp;

    move-result-object v6

    sget-object v8, Lcom/google/android/gms/internal/consent_sdk/zzmp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqp;

    const-class v12, Lcom/google/android/gms/internal/consent_sdk/zzmo;

    const-class v13, Lcom/google/android/gms/internal/consent_sdk/zzms;

    const-string v1, "zzf"

    const-string v2, "zze"

    const-string v3, "zzd"

    const-string v4, "zzg"

    const-string v5, "zzh"

    const-string v7, "zzi"

    const-class v9, Lcom/google/android/gms/internal/consent_sdk/zzmi;

    const-class v10, Lcom/google/android/gms/internal/consent_sdk/zzml;

    const-class v11, Lcom/google/android/gms/internal/consent_sdk/zzmv;

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzmx;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzmx;

    const-string v2, "\u0004\u0008\u0001\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzw(Lcom/google/android/gms/internal/consent_sdk/zzrq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
