// orders
export interface Orders {
  id: number;
  userId: number;
  name: string;
  status: number;
  createdAt: string | null;
  updatedAt: string | null;
}

// pays
export interface Pays {
  id: number;
  userId: number;
  name: string;
  status: number;
  createdAt: string;
  updatedAt: string;
}

// users
export interface Users {
  id: number;
  email: string;
  password: string | null;
  name: string | null;
  status: number;
  createdAt: string;
  updatedAt: string;
}
